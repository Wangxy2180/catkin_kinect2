
"use strict";

let BoundingBoxes = require('./BoundingBoxes.js');
let BoundingBox = require('./BoundingBox.js');
let ObjectCount = require('./ObjectCount.js');
let CheckForObjectsAction = require('./CheckForObjectsAction.js');
let CheckForObjectsActionGoal = require('./CheckForObjectsActionGoal.js');
let CheckForObjectsGoal = require('./CheckForObjectsGoal.js');
let CheckForObjectsFeedback = require('./CheckForObjectsFeedback.js');
let CheckForObjectsActionFeedback = require('./CheckForObjectsActionFeedback.js');
let CheckForObjectsResult = require('./CheckForObjectsResult.js');
let CheckForObjectsActionResult = require('./CheckForObjectsActionResult.js');

module.exports = {
  BoundingBoxes: BoundingBoxes,
  BoundingBox: BoundingBox,
  ObjectCount: ObjectCount,
  CheckForObjectsAction: CheckForObjectsAction,
  CheckForObjectsActionGoal: CheckForObjectsActionGoal,
  CheckForObjectsGoal: CheckForObjectsGoal,
  CheckForObjectsFeedback: CheckForObjectsFeedback,
  CheckForObjectsActionFeedback: CheckForObjectsActionFeedback,
  CheckForObjectsResult: CheckForObjectsResult,
  CheckForObjectsActionResult: CheckForObjectsActionResult,
};
