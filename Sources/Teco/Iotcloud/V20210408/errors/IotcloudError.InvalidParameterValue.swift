//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCIotcloudError {
    public struct InvalidParameterValue: TCIotcloudErrorType {
        enum Code: String {
            case actionNil = "InvalidParameterValue.ActionNil"
            case caCertInvalid = "InvalidParameterValue.CACertInvalid"
            case caCertNotMatch = "InvalidParameterValue.CACertNotMatch"
            case checkForwardURLFail = "InvalidParameterValue.CheckForwardURLFail"
            case cloudComponentAlreadyExist = "InvalidParameterValue.CloudComponentAlreadyExist"
            case definedPskNotBase64 = "InvalidParameterValue.DefinedPskNotBase64"
            case deviceAlreadyExist = "InvalidParameterValue.DeviceAlreadyExist"
            case deviceIsNotGateway = "InvalidParameterValue.DeviceIsNotGateway"
            case failActionHasSameDevice = "InvalidParameterValue.FailActionHasSameDevice"
            case firmwareAlreadyExist = "InvalidParameterValue.FirmwareAlreadyExist"
            case forwardRedirectDenied = "InvalidParameterValue.ForwardRedirectDenied"
            case invalidJSON = "InvalidParameterValue.InvalidJSON"
            case invalidSQL = "InvalidParameterValue.InvalidSQL"
            case jsonHasInvalidNode = "InvalidParameterValue.JSONHasInvalidNode"
            case jsonSizeExceedLimit = "InvalidParameterValue.JSONSizeExceedLimit"
            case notMergeAble = "InvalidParameterValue.NotMergeAble"
            case operationDenied = "InvalidParameterValue.OperationDenied"
            case paramIncomplete = "InvalidParameterValue.ParamIncomplete"
            case payloadOverLimit = "InvalidParameterValue.PayloadOverLimit"
            case prefixInvalid = "InvalidParameterValue.PrefixInvalid"
            case productAlreadyExist = "InvalidParameterValue.ProductAlreadyExist"
            case productTypeNotSupport = "InvalidParameterValue.ProductTypeNotSupport"
            case republishTopicFormatError = "InvalidParameterValue.RepublishTopicFormatError"
            case ruleNumberBeyondLimit = "InvalidParameterValue.RuleNumberBeyondLimit"
            case tidProductAlreadyExist = "InvalidParameterValue.TidProductAlreadyExist"
            case topicPolicyAlreadyExist = "InvalidParameterValue.TopicPolicyAlreadyExist"
            case topicRuleAlreadyExist = "InvalidParameterValue.TopicRuleAlreadyExist"
            case topicRuleSqlNotEdited = "InvalidParameterValue.TopicRuleSqlNotEdited"
            case updateTopicRuleDBFail = "InvalidParameterValue.UpdateTopicRuleDBFail"
            case other = "InvalidParameterValue"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// ????????????????????????
        public static var actionNil: InvalidParameterValue {
            InvalidParameterValue(.actionNil)
        }

        /// CA?????????????????????
        public static var caCertInvalid: InvalidParameterValue {
            InvalidParameterValue(.caCertInvalid)
        }

        /// CA????????????????????????
        public static var caCertNotMatch: InvalidParameterValue {
            InvalidParameterValue(.caCertNotMatch)
        }

        /// ???????????????URL??????????????????
        public static var checkForwardURLFail: InvalidParameterValue {
            InvalidParameterValue(.checkForwardURLFail)
        }

        /// ???????????????????????????????????????????????????????????????????????????
        public static var cloudComponentAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.cloudComponentAlreadyExist)
        }

        /// ???????????????DefinedPsk??????Base64?????????????????????
        public static var definedPskNotBase64: InvalidParameterValue {
            InvalidParameterValue(.definedPskNotBase64)
        }

        /// ??????????????????????????????
        public static var deviceAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.deviceAlreadyExist)
        }

        /// ???????????????????????????
        public static var deviceIsNotGateway: InvalidParameterValue {
            InvalidParameterValue(.deviceIsNotGateway)
        }

        /// ?????????????????????????????????????????????????????????????????????????????????
        public static var failActionHasSameDevice: InvalidParameterValue {
            InvalidParameterValue(.failActionHasSameDevice)
        }

        /// ??????????????????
        public static var firmwareAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.firmwareAlreadyExist)
        }

        /// ???????????????????????????
        public static var forwardRedirectDenied: InvalidParameterValue {
            InvalidParameterValue(.forwardRedirectDenied)
        }

        /// JSON???????????????
        public static var invalidJSON: InvalidParameterValue {
            InvalidParameterValue(.invalidJSON)
        }

        /// SQL???????????????????????????
        public static var invalidSQL: InvalidParameterValue {
            InvalidParameterValue(.invalidSQL)
        }

        /// State JSON??????????????????????????????
        public static var jsonHasInvalidNode: InvalidParameterValue {
            InvalidParameterValue(.jsonHasInvalidNode)
        }

        /// State JSON???????????????????????????????????? 8k???
        public static var jsonSizeExceedLimit: InvalidParameterValue {
            InvalidParameterValue(.jsonSizeExceedLimit)
        }

        /// ???????????????
        public static var notMergeAble: InvalidParameterValue {
            InvalidParameterValue(.notMergeAble)
        }

        /// ?????????????????????????????????
        ///
        /// ??????????????????????????????????????????
        public static var operationDenied: InvalidParameterValue {
            InvalidParameterValue(.operationDenied)
        }

        /// ????????????????????????????????????
        public static var paramIncomplete: InvalidParameterValue {
            InvalidParameterValue(.paramIncomplete)
        }

        /// ??????Payload???????????????
        public static var payloadOverLimit: InvalidParameterValue {
            InvalidParameterValue(.payloadOverLimit)
        }

        /// prefix????????????
        public static var prefixInvalid: InvalidParameterValue {
            InvalidParameterValue(.prefixInvalid)
        }

        /// ??????????????????????????????
        public static var productAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.productAlreadyExist)
        }

        /// ????????????????????????
        public static var productTypeNotSupport: InvalidParameterValue {
            InvalidParameterValue(.productTypeNotSupport)
        }

        /// ?????????topic???????????????
        public static var republishTopicFormatError: InvalidParameterValue {
            InvalidParameterValue(.republishTopicFormatError)
        }

        /// ???????????????????????????
        public static var ruleNumberBeyondLimit: InvalidParameterValue {
            InvalidParameterValue(.ruleNumberBeyondLimit)
        }

        /// ???TID??????????????????
        public static var tidProductAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.tidProductAlreadyExist)
        }

        /// Topic????????????
        public static var topicPolicyAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.topicPolicyAlreadyExist)
        }

        /// ??????????????????
        public static var topicRuleAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.topicRuleAlreadyExist)
        }

        /// ??????sql????????????
        public static var topicRuleSqlNotEdited: InvalidParameterValue {
            InvalidParameterValue(.topicRuleSqlNotEdited)
        }

        /// ?????????????????????????????????????????????
        ///
        /// ??????????????????????????????????????????????????????????????????????????????
        public static var updateTopicRuleDBFail: InvalidParameterValue {
            InvalidParameterValue(.updateTopicRuleDBFail)
        }

        /// ?????????????????????
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asIotcloudError() -> TCIotcloudError {
            let code: TCIotcloudError.Code
            switch self.error {
            case .actionNil: 
                code = .invalidParameterValue_ActionNil
            case .caCertInvalid: 
                code = .invalidParameterValue_CACertInvalid
            case .caCertNotMatch: 
                code = .invalidParameterValue_CACertNotMatch
            case .checkForwardURLFail: 
                code = .invalidParameterValue_CheckForwardURLFail
            case .cloudComponentAlreadyExist: 
                code = .invalidParameterValue_CloudComponentAlreadyExist
            case .definedPskNotBase64: 
                code = .invalidParameterValue_DefinedPskNotBase64
            case .deviceAlreadyExist: 
                code = .invalidParameterValue_DeviceAlreadyExist
            case .deviceIsNotGateway: 
                code = .invalidParameterValue_DeviceIsNotGateway
            case .failActionHasSameDevice: 
                code = .invalidParameterValue_FailActionHasSameDevice
            case .firmwareAlreadyExist: 
                code = .invalidParameterValue_FirmwareAlreadyExist
            case .forwardRedirectDenied: 
                code = .invalidParameterValue_ForwardRedirectDenied
            case .invalidJSON: 
                code = .invalidParameterValue_InvalidJSON
            case .invalidSQL: 
                code = .invalidParameterValue_InvalidSQL
            case .jsonHasInvalidNode: 
                code = .invalidParameterValue_JSONHasInvalidNode
            case .jsonSizeExceedLimit: 
                code = .invalidParameterValue_JSONSizeExceedLimit
            case .notMergeAble: 
                code = .invalidParameterValue_NotMergeAble
            case .operationDenied: 
                code = .invalidParameterValue_OperationDenied
            case .paramIncomplete: 
                code = .invalidParameterValue_ParamIncomplete
            case .payloadOverLimit: 
                code = .invalidParameterValue_PayloadOverLimit
            case .prefixInvalid: 
                code = .invalidParameterValue_PrefixInvalid
            case .productAlreadyExist: 
                code = .invalidParameterValue_ProductAlreadyExist
            case .productTypeNotSupport: 
                code = .invalidParameterValue_ProductTypeNotSupport
            case .republishTopicFormatError: 
                code = .invalidParameterValue_RepublishTopicFormatError
            case .ruleNumberBeyondLimit: 
                code = .invalidParameterValue_RuleNumberBeyondLimit
            case .tidProductAlreadyExist: 
                code = .invalidParameterValue_TidProductAlreadyExist
            case .topicPolicyAlreadyExist: 
                code = .invalidParameterValue_TopicPolicyAlreadyExist
            case .topicRuleAlreadyExist: 
                code = .invalidParameterValue_TopicRuleAlreadyExist
            case .topicRuleSqlNotEdited: 
                code = .invalidParameterValue_TopicRuleSqlNotEdited
            case .updateTopicRuleDBFail: 
                code = .invalidParameterValue_UpdateTopicRuleDBFail
            case .other: 
                code = .invalidParameterValue
            }
            return TCIotcloudError(code, context: self.context)
        }
    }
}
