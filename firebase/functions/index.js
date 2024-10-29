const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const stripeModule = require("stripe");

// Credentials
const kStripeProdSecretKey = "";
const kStripeTestSecretKey =
  "sk_test_51Q52YyHoT67fRSG192JG5WEeYYYUv83pgmUxAn4yoEbKnn00SYCfDbT87bzKmrbZoo3k2QcoEgx8VWG8wFS7QjVf004q5iyEtp";

const secretKey = (isProd) =>
  isProd ? kStripeProdSecretKey : kStripeTestSecretKey;

/**
 *
 */
exports.initStripePayment = functions.https.onCall(async (data, context) => {
  if (!context.auth) {
    return "Unauthenticated calls are not allowed.";
  }
  return await initPayment(data, true);
});

/**
 *
 */
exports.initStripeTestPayment = functions.https.onCall(
  async (data, context) => {
    if (!context.auth) {
      return "Unauthenticated calls are not allowed.";
    }
    return await initPayment(data, false);
  },
);

async function initPayment(data, isProd) {
  try {
    const stripe = new stripeModule.Stripe(secretKey(isProd), {
      apiVersion: "2020-08-27",
    });

    const customers = await stripe.customers.list({
      email: data.email,
      limit: 1,
    });
    var customer = customers.data[0];
    if (!customer) {
      customer = await stripe.customers.create({
        email: data.email,
        ...(data.name && { name: data.name }),
      });
    }

    const ephemeralKey = await stripe.ephemeralKeys.create(
      { customer: customer.id },
      { apiVersion: "2020-08-27" },
    );
    const paymentIntent = await stripe.paymentIntents.create({
      amount: data.amount,
      currency: data.currency,
      customer: customer.id,
      ...(data.description && { description: data.description }),
    });

    return {
      paymentId: paymentIntent.id,
      paymentIntent: paymentIntent.client_secret,
      ephemeralKey: ephemeralKey.secret,
      customer: customer.id,
      success: true,
    };
  } catch (error) {
    console.log(`Error: ${error}`);
    return { success: false, error: userFacingMessage(error) };
  }
}

/**
 * Sanitize the error message for the user.
 */
function userFacingMessage(error) {
  return error.type
    ? error.message
    : "An error occurred, developers have been alerted";
}
const Razorpay = require("razorpay");
const crypto = require("crypto");

// Test credentials
const kTestKeyId = "rzp_test_fGAWpirPD9MKem";
const kTestKeySecret = "EdOEVb2WzxFvK955GmobgGZm";

// Prod credentials
const kProdKeyId = "rzp_live_edH0zXUBVbb9fT";
const kProdKeySecret = "4YanDuwJh2LaGYjLI76YXUpm";

const keyId = (isProd) => (isProd ? kProdKeyId : kTestKeyId);
const keySecret = (isProd) => (isProd ? kProdKeySecret : kTestKeySecret);

/**
 *
 */
exports.createOrder = functions.https.onCall(async (data, context) => {
  if (!context.auth) {
    return "Unauthenticated calls are not allowed.";
  }
  return await generateOrder(data, true);
});

/**
 *
 */
exports.testCreateOrder = functions.https.onCall(async (data, context) => {
  if (!context.auth) {
    return "Unauthenticated calls are not allowed.";
  }
  return await generateOrder(data, false);
});

/**
 *
 */
async function generateOrder(data, isProd) {
  const razorpay = new Razorpay({
    key_id: keyId(isProd),
    key_secret: keySecret(isProd),
  });

  try {
    const order = await razorpay.orders.create({
      amount: data.amount,
      currency: data.currency,
      receipt: data.receipt,
    });

    return order;
  } catch (err) {
    console.error(`${err}`);
    throw new functions.https.HttpsError(
      "aborted",
      "Could not create the order",
    );
  }
}

/**
 *
 */
exports.verifySignature = functions.https.onCall(async (data, context) => {
  if (!context.auth) {
    return "Unauthenticated calls are not allowed.";
  }
  return isValidSignature(data, true);
});

/**
 *
 */
exports.testVerifySignature = functions.https.onCall(async (data, context) => {
  if (!context.auth) {
    return "Unauthenticated calls are not allowed.";
  }
  return isValidSignature(data, false);
});

/**
 *
 */
function isValidSignature(data, isProd) {
  const hmac = crypto.createHmac("sha256", keySecret(isProd));
  hmac.update(data.orderId + "|" + data.paymentId);
  const generatedSignature = hmac.digest("hex");
  const isSignatureValid = generatedSignature === data.signature;
  return { isValid: isSignatureValid };
}
exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
  await firestore.collection("users").doc(user.uid).delete();
});
