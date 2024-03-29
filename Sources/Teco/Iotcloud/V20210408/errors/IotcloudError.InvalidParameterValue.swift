//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

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

        /// 规则行为未配置。
        public static var actionNil: InvalidParameterValue {
            InvalidParameterValue(.actionNil)
        }

        /// CA证书内容错误。
        public static var caCertInvalid: InvalidParameterValue {
            InvalidParameterValue(.caCertInvalid)
        }

        /// CA验证证书不匹配。
        public static var caCertNotMatch: InvalidParameterValue {
            InvalidParameterValue(.caCertNotMatch)
        }

        /// 检查第三方URL超时或失败。
        public static var checkForwardURLFail: InvalidParameterValue {
            InvalidParameterValue(.checkForwardURLFail)
        }

        /// 保存失败，行为操作和转发错误行为数据目标不可一致。
        public static var cloudComponentAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.cloudComponentAlreadyExist)
        }

        /// 格式错误，DefinedPsk需为Base64格式的字符串。
        public static var definedPskNotBase64: InvalidParameterValue {
            InvalidParameterValue(.definedPskNotBase64)
        }

        /// 创建的设备名已存在。
        public static var deviceAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.deviceAlreadyExist)
        }

        /// 设备不是网关类型。
        public static var deviceIsNotGateway: InvalidParameterValue {
            InvalidParameterValue(.deviceIsNotGateway)
        }

        /// 存失败，行为操作和转发错误行为数据目标不可为同一设备。
        public static var failActionHasSameDevice: InvalidParameterValue {
            InvalidParameterValue(.failActionHasSameDevice)
        }

        /// 固件已存在。
        public static var firmwareAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.firmwareAlreadyExist)
        }

        /// 不允许转发重定向。
        public static var forwardRedirectDenied: InvalidParameterValue {
            InvalidParameterValue(.forwardRedirectDenied)
        }

        /// JSON参数非法。
        public static var invalidJSON: InvalidParameterValue {
            InvalidParameterValue(.invalidJSON)
        }

        /// SQL语句含有非法字符。
        public static var invalidSQL: InvalidParameterValue {
            InvalidParameterValue(.invalidSQL)
        }

        /// State JSON对象中包含非法节点。
        public static var jsonHasInvalidNode: InvalidParameterValue {
            InvalidParameterValue(.jsonHasInvalidNode)
        }

        /// State JSON对象超过大小限制，最大为 8k。
        public static var jsonSizeExceedLimit: InvalidParameterValue {
            InvalidParameterValue(.jsonSizeExceedLimit)
        }

        /// 不可合并。
        public static var notMergeAble: InvalidParameterValue {
            InvalidParameterValue(.notMergeAble)
        }

        /// 修改规则的操作被禁止。
        ///
        /// 先禁用规则，然后修改后启用。
        public static var operationDenied: InvalidParameterValue {
            InvalidParameterValue(.operationDenied)
        }

        /// 请求中缺少关键字段信息。
        public static var paramIncomplete: InvalidParameterValue {
            InvalidParameterValue(.paramIncomplete)
        }

        /// 消息Payload超出限制。
        public static var payloadOverLimit: InvalidParameterValue {
            InvalidParameterValue(.payloadOverLimit)
        }

        /// prefix不合法。
        public static var prefixInvalid: InvalidParameterValue {
            InvalidParameterValue(.prefixInvalid)
        }

        /// 创建的产品名已存在。
        public static var productAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.productAlreadyExist)
        }

        /// 产品类型不支持。
        public static var productTypeNotSupport: InvalidParameterValue {
            InvalidParameterValue(.productTypeNotSupport)
        }

        /// 转发的topic格式错误。
        public static var republishTopicFormatError: InvalidParameterValue {
            InvalidParameterValue(.republishTopicFormatError)
        }

        /// 规则数量超过限制。
        public static var ruleNumberBeyondLimit: InvalidParameterValue {
            InvalidParameterValue(.ruleNumberBeyondLimit)
        }

        /// 该TID产品已存在。
        public static var tidProductAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.tidProductAlreadyExist)
        }

        /// Topic已存在。
        public static var topicPolicyAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.topicPolicyAlreadyExist)
        }

        /// 规则已存在。
        public static var topicRuleAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.topicRuleAlreadyExist)
        }

        /// 规则sql未编辑。
        public static var topicRuleSqlNotEdited: InvalidParameterValue {
            InvalidParameterValue(.topicRuleSqlNotEdited)
        }

        /// 请确认规则相关数据是否有更新。
        ///
        /// 修改规则详情，保证规则详情相关字段有值跟以前不一样。
        public static var updateTopicRuleDBFail: InvalidParameterValue {
            InvalidParameterValue(.updateTopicRuleDBFail)
        }

        /// 参数取值错误。
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
