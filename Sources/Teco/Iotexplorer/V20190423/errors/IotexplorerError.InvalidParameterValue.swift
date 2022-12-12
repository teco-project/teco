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

extension TCIotexplorerError {
    public struct InvalidParameterValue: TCIotexplorerErrorType {
        enum Code: String {
            case actionNil = "InvalidParameterValue.ActionNil"
            case actionNilOrNotExist = "InvalidParameterValue.ActionNilOrNotExist"
            case appDescriptionTooLong = "InvalidParameterValue.AppDescriptionTooLong"
            case appExists = "InvalidParameterValue.AppExists"
            case appNameTooLong = "InvalidParameterValue.AppNameTooLong"
            case appNoPermission = "InvalidParameterValue.AppNoPermission"
            case appNotExists = "InvalidParameterValue.AppNotExists"
            case checkForwardURLFail = "InvalidParameterValue.CheckForwardURLFail"
            case deviceAlreadyExist = "InvalidParameterValue.DeviceAlreadyExist"
            case deviceHasNotBindGateway = "InvalidParameterValue.DeviceHasNotBindGateway"
            case deviceIsNotGateway = "InvalidParameterValue.DeviceIsNotGateway"
            case deviceNameInvalid = "InvalidParameterValue.DeviceNameInvalid"
            case deviceNotExist = "InvalidParameterValue.DeviceNotExist"
            case errLLSyncBroadcastDeviceNameLengthExceed = "InvalidParameterValue.ErrLLSyncBroadcastDeviceNameLengthExceed"
            case errorTaskNotExist = "InvalidParameterValue.ErrorTaskNotExist"
            case failActionHasSameDevice = "InvalidParameterValue.FailActionHasSameDevice"
            case firmwareAlreadyExist = "InvalidParameterValue.FirmwareAlreadyExist"
            case forwardRedirectDenied = "InvalidParameterValue.ForwardRedirectDenied"
            case invalidSQL = "InvalidParameterValue.InvalidSQL"
            case loRaFreqParmsError = "InvalidParameterValue.LoRaFreqParmsError"
            case modelDefineDontMatchTemplate = "InvalidParameterValue.ModelDefineDontMatchTemplate"
            case modelDefineDupID = "InvalidParameterValue.ModelDefineDupID"
            case modelDefineErrorModel = "InvalidParameterValue.ModelDefineErrorModel"
            case modelDefineErrorType = "InvalidParameterValue.ModelDefineErrorType"
            case modelDefineEventParamsDupID = "InvalidParameterValue.ModelDefineEventParamsDupID"
            case modelDefineEventParamsExceedLimit = "InvalidParameterValue.ModelDefineEventParamsExceedLimit"
            case modelDefineEventPropError = "InvalidParameterValue.ModelDefineEventPropError"
            case modelDefineEventPropNameError = "InvalidParameterValue.ModelDefineEventPropNameError"
            case modelDefineInvalid = "InvalidParameterValue.ModelDefineInvalid"
            case modelDefineNil = "InvalidParameterValue.ModelDefineNil"
            case modelDefinePropBoolMappingError = "InvalidParameterValue.ModelDefinePropBoolMappingError"
            case modelDefinePropEnumMappingError = "InvalidParameterValue.ModelDefinePropEnumMappingError"
            case modelDefinePropRangeError = "InvalidParameterValue.ModelDefinePropRangeError"
            case modelDefinePropRangeOverflow = "InvalidParameterValue.ModelDefinePropRangeOverflow"
            case modelPropertyNotExist = "InvalidParameterValue.ModelPropertyNotExist"
            case msgContentInvalid = "InvalidParameterValue.MsgContentInvalid"
            case msgLevelInvalid = "InvalidParameterValue.MsgLevelInvalid"
            case msgTitleInvalid = "InvalidParameterValue.MsgTitleInvalid"
            case msgTypeInvalid = "InvalidParameterValue.MsgTypeInvalid"
            case operationDenied = "InvalidParameterValue.OperationDenied"
            case payloadOverLimit = "InvalidParameterValue.PayloadOverLimit"
            case productAlreadyExist = "InvalidParameterValue.ProductAlreadyExist"
            case productIDInvalid = "InvalidParameterValue.ProductIDInvalid"
            case productIsNotGateway = "InvalidParameterValue.ProductIsNotGateway"
            case productParmsError = "InvalidParameterValue.ProductParmsError"
            case projectParmsError = "InvalidParameterValue.ProjectParmsError"
            case republishTopicFormatError = "InvalidParameterValue.RepublishTopicFormatError"
            case ruleNumberBeyondLimit = "InvalidParameterValue.RuleNumberBeyondLimit"
            case selectKeyFromBinaryPayload = "InvalidParameterValue.SelectKeyFromBinaryPayload"
            case startTimeLaterEndTime = "InvalidParameterValue.StartTimeLaterEndTime"
            case topicPolicyAlreadyExist = "InvalidParameterValue.TopicPolicyAlreadyExist"
            case topicRuleAlreadyExist = "InvalidParameterValue.TopicRuleAlreadyExist"
            case topicRuleSqlNotEdited = "InvalidParameterValue.TopicRuleSqlNotEdited"
            case updateTopicRuleDBFail = "InvalidParameterValue.UpdateTopicRuleDBFail"
            case userIDInvalid = "InvalidParameterValue.UserIDInvalid"
            case vpnParmsError = "InvalidParameterValue.VPNParmsError"
            case other = "InvalidParameterValue"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 规则行为未配置。
        public static var actionNil: InvalidParameterValue {
            InvalidParameterValue(.actionNil)
        }
        
        /// 动作为空或不存在。
        public static var actionNilOrNotExist: InvalidParameterValue {
            InvalidParameterValue(.actionNilOrNotExist)
        }
        
        /// 应用描述过长。
        public static var appDescriptionTooLong: InvalidParameterValue {
            InvalidParameterValue(.appDescriptionTooLong)
        }
        
        /// App已存在。
        public static var appExists: InvalidParameterValue {
            InvalidParameterValue(.appExists)
        }
        
        /// 应用名称过长。
        public static var appNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.appNameTooLong)
        }
        
        /// App无权限。
        public static var appNoPermission: InvalidParameterValue {
            InvalidParameterValue(.appNoPermission)
        }
        
        /// App不存在。
        public static var appNotExists: InvalidParameterValue {
            InvalidParameterValue(.appNotExists)
        }
        
        /// 检查第三方URL超时或失败。
        public static var checkForwardURLFail: InvalidParameterValue {
            InvalidParameterValue(.checkForwardURLFail)
        }
        
        /// 创建的设备名已存在。
        public static var deviceAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.deviceAlreadyExist)
        }
        
        /// 设备未绑定任何网关设备。
        public static var deviceHasNotBindGateway: InvalidParameterValue {
            InvalidParameterValue(.deviceHasNotBindGateway)
        }
        
        /// 设备不是网关类型。
        public static var deviceIsNotGateway: InvalidParameterValue {
            InvalidParameterValue(.deviceIsNotGateway)
        }
        
        /// 设备名称非法。
        public static var deviceNameInvalid: InvalidParameterValue {
            InvalidParameterValue(.deviceNameInvalid)
        }
        
        /// 设备不存在。
        public static var deviceNotExist: InvalidParameterValue {
            InvalidParameterValue(.deviceNotExist)
        }
        
        public static var errLLSyncBroadcastDeviceNameLengthExceed: InvalidParameterValue {
            InvalidParameterValue(.errLLSyncBroadcastDeviceNameLengthExceed)
        }
        
        /// 任务不存在。
        public static var errorTaskNotExist: InvalidParameterValue {
            InvalidParameterValue(.errorTaskNotExist)
        }
        
        /// 存失败，行为操作和转发错误行为数据目标不可为同一设备。
        public static var failActionHasSameDevice: InvalidParameterValue {
            InvalidParameterValue(.failActionHasSameDevice)
        }
        
        /// 固件已经存在。
        public static var firmwareAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.firmwareAlreadyExist)
        }
        
        /// 转发重定向被拒绝。
        public static var forwardRedirectDenied: InvalidParameterValue {
            InvalidParameterValue(.forwardRedirectDenied)
        }
        
        /// SQL语句含有非法字符。
        public static var invalidSQL: InvalidParameterValue {
            InvalidParameterValue(.invalidSQL)
        }
        
        /// LoRa频点参数错误。
        public static var loRaFreqParmsError: InvalidParameterValue {
            InvalidParameterValue(.loRaFreqParmsError)
        }
        
        /// 物模型不符合产品模板。
        public static var modelDefineDontMatchTemplate: InvalidParameterValue {
            InvalidParameterValue(.modelDefineDontMatchTemplate)
        }
        
        /// 物模型存在重复ID。
        public static var modelDefineDupID: InvalidParameterValue {
            InvalidParameterValue(.modelDefineDupID)
        }
        
        /// 物模型事件/属性Model错误。
        public static var modelDefineErrorModel: InvalidParameterValue {
            InvalidParameterValue(.modelDefineErrorModel)
        }
        
        /// 物模型事件/属性Model Type错误。
        public static var modelDefineErrorType: InvalidParameterValue {
            InvalidParameterValue(.modelDefineErrorType)
        }
        
        /// 物模型EVENT Parms存在重复ID。
        public static var modelDefineEventParamsDupID: InvalidParameterValue {
            InvalidParameterValue(.modelDefineEventParamsDupID)
        }
        
        /// 物模型EVENT Parms数量超过限制。
        public static var modelDefineEventParamsExceedLimit: InvalidParameterValue {
            InvalidParameterValue(.modelDefineEventParamsExceedLimit)
        }
        
        /// 物模型事件/属性参数错误。
        public static var modelDefineEventPropError: InvalidParameterValue {
            InvalidParameterValue(.modelDefineEventPropError)
        }
        
        /// 物模型事件/属性 Name 错误。
        public static var modelDefineEventPropNameError: InvalidParameterValue {
            InvalidParameterValue(.modelDefineEventPropNameError)
        }
        
        /// 数据模板未定义。
        public static var modelDefineInvalid: InvalidParameterValue {
            InvalidParameterValue(.modelDefineInvalid)
        }
        
        /// 物模型为空。
        public static var modelDefineNil: InvalidParameterValue {
            InvalidParameterValue(.modelDefineNil)
        }
        
        /// 物模型事件/属性 BOOL类型 Mapping 定义错误。
        public static var modelDefinePropBoolMappingError: InvalidParameterValue {
            InvalidParameterValue(.modelDefinePropBoolMappingError)
        }
        
        /// 物模型事件/属性 Enum类型 Mapping 定义错误。
        public static var modelDefinePropEnumMappingError: InvalidParameterValue {
            InvalidParameterValue(.modelDefinePropEnumMappingError)
        }
        
        /// 物模型事件/属性 Min/Max 定义错误。
        public static var modelDefinePropRangeError: InvalidParameterValue {
            InvalidParameterValue(.modelDefinePropRangeError)
        }
        
        /// 物模型事件/属性 Min/Max 范围超限。
        public static var modelDefinePropRangeOverflow: InvalidParameterValue {
            InvalidParameterValue(.modelDefinePropRangeOverflow)
        }
        
        /// 属性ID不存在。
        public static var modelPropertyNotExist: InvalidParameterValue {
            InvalidParameterValue(.modelPropertyNotExist)
        }
        
        /// 消息内容非法。
        public static var msgContentInvalid: InvalidParameterValue {
            InvalidParameterValue(.msgContentInvalid)
        }
        
        /// 消息等级非法。
        public static var msgLevelInvalid: InvalidParameterValue {
            InvalidParameterValue(.msgLevelInvalid)
        }
        
        /// 消息标题非法。
        public static var msgTitleInvalid: InvalidParameterValue {
            InvalidParameterValue(.msgTitleInvalid)
        }
        
        /// 消息类型非法。
        public static var msgTypeInvalid: InvalidParameterValue {
            InvalidParameterValue(.msgTypeInvalid)
        }
        
        /// 操作不支持。
        public static var operationDenied: InvalidParameterValue {
            InvalidParameterValue(.operationDenied)
        }
        
        /// 消息Payload超出限制。
        public static var payloadOverLimit: InvalidParameterValue {
            InvalidParameterValue(.payloadOverLimit)
        }
        
        /// 创建的产品名已存在。
        public static var productAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.productAlreadyExist)
        }
        
        /// 产品ID非法。
        public static var productIDInvalid: InvalidParameterValue {
            InvalidParameterValue(.productIDInvalid)
        }
        
        /// 产品不是网关类型，无法绑定子产品。
        public static var productIsNotGateway: InvalidParameterValue {
            InvalidParameterValue(.productIsNotGateway)
        }
        
        /// 产品参数错误。
        public static var productParmsError: InvalidParameterValue {
            InvalidParameterValue(.productParmsError)
        }
        
        /// 项目参数错误。
        public static var projectParmsError: InvalidParameterValue {
            InvalidParameterValue(.projectParmsError)
        }
        
        /// 转发的topic格式错误。
        public static var republishTopicFormatError: InvalidParameterValue {
            InvalidParameterValue(.republishTopicFormatError)
        }
        
        /// 规则数量超过限制。
        public static var ruleNumberBeyondLimit: InvalidParameterValue {
            InvalidParameterValue(.ruleNumberBeyondLimit)
        }
        
        /// 二进制数据格式只可利用 * 将数据进行转发。
        public static var selectKeyFromBinaryPayload: InvalidParameterValue {
            InvalidParameterValue(.selectKeyFromBinaryPayload)
        }
        
        /// 开始时间晚于结束时间。
        public static var startTimeLaterEndTime: InvalidParameterValue {
            InvalidParameterValue(.startTimeLaterEndTime)
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
        public static var updateTopicRuleDBFail: InvalidParameterValue {
            InvalidParameterValue(.updateTopicRuleDBFail)
        }
        
        /// 用户ID非法。
        public static var userIDInvalid: InvalidParameterValue {
            InvalidParameterValue(.userIDInvalid)
        }
        
        /// VPN参数错误。
        public static var vpnParmsError: InvalidParameterValue {
            InvalidParameterValue(.vpnParmsError)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
        
        public func asIotexplorerError() -> TCIotexplorerError {
            let code: TCIotexplorerError.Code
            switch self.error {
            case .actionNil: 
                code = .invalidParameterValue_ActionNil
            case .actionNilOrNotExist: 
                code = .invalidParameterValue_ActionNilOrNotExist
            case .appDescriptionTooLong: 
                code = .invalidParameterValue_AppDescriptionTooLong
            case .appExists: 
                code = .invalidParameterValue_AppExists
            case .appNameTooLong: 
                code = .invalidParameterValue_AppNameTooLong
            case .appNoPermission: 
                code = .invalidParameterValue_AppNoPermission
            case .appNotExists: 
                code = .invalidParameterValue_AppNotExists
            case .checkForwardURLFail: 
                code = .invalidParameterValue_CheckForwardURLFail
            case .deviceAlreadyExist: 
                code = .invalidParameterValue_DeviceAlreadyExist
            case .deviceHasNotBindGateway: 
                code = .invalidParameterValue_DeviceHasNotBindGateway
            case .deviceIsNotGateway: 
                code = .invalidParameterValue_DeviceIsNotGateway
            case .deviceNameInvalid: 
                code = .invalidParameterValue_DeviceNameInvalid
            case .deviceNotExist: 
                code = .invalidParameterValue_DeviceNotExist
            case .errLLSyncBroadcastDeviceNameLengthExceed: 
                code = .invalidParameterValue_ErrLLSyncBroadcastDeviceNameLengthExceed
            case .errorTaskNotExist: 
                code = .invalidParameterValue_ErrorTaskNotExist
            case .failActionHasSameDevice: 
                code = .invalidParameterValue_FailActionHasSameDevice
            case .firmwareAlreadyExist: 
                code = .invalidParameterValue_FirmwareAlreadyExist
            case .forwardRedirectDenied: 
                code = .invalidParameterValue_ForwardRedirectDenied
            case .invalidSQL: 
                code = .invalidParameterValue_InvalidSQL
            case .loRaFreqParmsError: 
                code = .invalidParameterValue_LoRaFreqParmsError
            case .modelDefineDontMatchTemplate: 
                code = .invalidParameterValue_ModelDefineDontMatchTemplate
            case .modelDefineDupID: 
                code = .invalidParameterValue_ModelDefineDupID
            case .modelDefineErrorModel: 
                code = .invalidParameterValue_ModelDefineErrorModel
            case .modelDefineErrorType: 
                code = .invalidParameterValue_ModelDefineErrorType
            case .modelDefineEventParamsDupID: 
                code = .invalidParameterValue_ModelDefineEventParamsDupID
            case .modelDefineEventParamsExceedLimit: 
                code = .invalidParameterValue_ModelDefineEventParamsExceedLimit
            case .modelDefineEventPropError: 
                code = .invalidParameterValue_ModelDefineEventPropError
            case .modelDefineEventPropNameError: 
                code = .invalidParameterValue_ModelDefineEventPropNameError
            case .modelDefineInvalid: 
                code = .invalidParameterValue_ModelDefineInvalid
            case .modelDefineNil: 
                code = .invalidParameterValue_ModelDefineNil
            case .modelDefinePropBoolMappingError: 
                code = .invalidParameterValue_ModelDefinePropBoolMappingError
            case .modelDefinePropEnumMappingError: 
                code = .invalidParameterValue_ModelDefinePropEnumMappingError
            case .modelDefinePropRangeError: 
                code = .invalidParameterValue_ModelDefinePropRangeError
            case .modelDefinePropRangeOverflow: 
                code = .invalidParameterValue_ModelDefinePropRangeOverflow
            case .modelPropertyNotExist: 
                code = .invalidParameterValue_ModelPropertyNotExist
            case .msgContentInvalid: 
                code = .invalidParameterValue_MsgContentInvalid
            case .msgLevelInvalid: 
                code = .invalidParameterValue_MsgLevelInvalid
            case .msgTitleInvalid: 
                code = .invalidParameterValue_MsgTitleInvalid
            case .msgTypeInvalid: 
                code = .invalidParameterValue_MsgTypeInvalid
            case .operationDenied: 
                code = .invalidParameterValue_OperationDenied
            case .payloadOverLimit: 
                code = .invalidParameterValue_PayloadOverLimit
            case .productAlreadyExist: 
                code = .invalidParameterValue_ProductAlreadyExist
            case .productIDInvalid: 
                code = .invalidParameterValue_ProductIDInvalid
            case .productIsNotGateway: 
                code = .invalidParameterValue_ProductIsNotGateway
            case .productParmsError: 
                code = .invalidParameterValue_ProductParmsError
            case .projectParmsError: 
                code = .invalidParameterValue_ProjectParmsError
            case .republishTopicFormatError: 
                code = .invalidParameterValue_RepublishTopicFormatError
            case .ruleNumberBeyondLimit: 
                code = .invalidParameterValue_RuleNumberBeyondLimit
            case .selectKeyFromBinaryPayload: 
                code = .invalidParameterValue_SelectKeyFromBinaryPayload
            case .startTimeLaterEndTime: 
                code = .invalidParameterValue_StartTimeLaterEndTime
            case .topicPolicyAlreadyExist: 
                code = .invalidParameterValue_TopicPolicyAlreadyExist
            case .topicRuleAlreadyExist: 
                code = .invalidParameterValue_TopicRuleAlreadyExist
            case .topicRuleSqlNotEdited: 
                code = .invalidParameterValue_TopicRuleSqlNotEdited
            case .updateTopicRuleDBFail: 
                code = .invalidParameterValue_UpdateTopicRuleDBFail
            case .userIDInvalid: 
                code = .invalidParameterValue_UserIDInvalid
            case .vpnParmsError: 
                code = .invalidParameterValue_VPNParmsError
            case .other: 
                code = .invalidParameterValue
            }
            return TCIotexplorerError(code, context: self.context)
        }
    }
}
