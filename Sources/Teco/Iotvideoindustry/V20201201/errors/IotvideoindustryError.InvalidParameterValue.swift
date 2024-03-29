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

extension TCIotvideoindustryError {
    public struct InvalidParameterValue: TCIotvideoindustryErrorType {
        enum Code: String {
            case balanceNotEnough = "InvalidParameterValue.BalanceNotEnough"
            case deviceDataMapError = "InvalidParameterValue.DeviceDataMapError"
            case deviceId = "InvalidParameterValue.DeviceId"
            case deviceInfoNotExist = "InvalidParameterValue.DeviceInfoNotExist"
            case deviceOffline = "InvalidParameterValue.DeviceOffline"
            case deviceOnline = "InvalidParameterValue.DeviceOnline"
            case deviceTypeNotSupport = "InvalidParameterValue.DeviceTypeNotSupport"
            case domainId = "InvalidParameterValue.DomainId"
            case expireTime = "InvalidParameterValue.ExpireTime"
            case groupDomainidExtraInformation = "InvalidParameterValue.GroupDomainidExtraInformation"
            case groupDomainidNotUpdate = "InvalidParameterValue.GroupDomainidNotUpdate"
            case groupParmsError = "InvalidParameterValue.GroupParmsError"
            case recordNotExist = "InvalidParameterValue.RecordNotExist"
            case recordPlanBeyondLimit = "InvalidParameterValue.RecordPlanBeyondLimit"
            case ruleLimit = "InvalidParameterValue.RuleLimit"
            case ruleNotExist = "InvalidParameterValue.RuleNotExist"
            case streamId = "InvalidParameterValue.StreamId"
            case streamInfoNotExist = "InvalidParameterValue.StreamInfoNotExist"
            case templateBeyondLimit = "InvalidParameterValue.TemplateBeyondLimit"
            case templateSpecEmpty = "InvalidParameterValue.TemplateSpecEmpty"
            case timeSpecNotSupport = "InvalidParameterValue.TimeSpecNotSupport"
            case typeNotSupport = "InvalidParameterValue.TypeNotSupport"
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

        /// 账户余额不足，请检查。
        public static var balanceNotEnough: InvalidParameterValue {
            InvalidParameterValue(.balanceNotEnough)
        }

        /// 无法通过该设备ID查找设备。
        public static var deviceDataMapError: InvalidParameterValue {
            InvalidParameterValue(.deviceDataMapError)
        }

        /// 设备Id不合法。
        public static var deviceId: InvalidParameterValue {
            InvalidParameterValue(.deviceId)
        }

        /// 设备通道不在线，请检查通道配置。
        public static var deviceInfoNotExist: InvalidParameterValue {
            InvalidParameterValue(.deviceInfoNotExist)
        }

        /// 设备离线或未注册。
        public static var deviceOffline: InvalidParameterValue {
            InvalidParameterValue(.deviceOffline)
        }

        /// 设备或通道处于在线状态。
        public static var deviceOnline: InvalidParameterValue {
            InvalidParameterValue(.deviceOnline)
        }

        /// 设备类型不支持。
        public static var deviceTypeNotSupport: InvalidParameterValue {
            InvalidParameterValue(.deviceTypeNotSupport)
        }

        /// 国标域/设备不存在或未注册。
        public static var domainId: InvalidParameterValue {
            InvalidParameterValue(.domainId)
        }

        /// 超时时间错误。
        public static var expireTime: InvalidParameterValue {
            InvalidParameterValue(.expireTime)
        }

        /// domainid分组不允许修改ExtraInformation。
        public static var groupDomainidExtraInformation: InvalidParameterValue {
            InvalidParameterValue(.groupDomainidExtraInformation)
        }

        /// 国标平台下级分组不允许修改。
        public static var groupDomainidNotUpdate: InvalidParameterValue {
            InvalidParameterValue(.groupDomainidNotUpdate)
        }

        /// 分组参数错误。
        public static var groupParmsError: InvalidParameterValue {
            InvalidParameterValue(.groupParmsError)
        }

        /// 回看流不存在。
        public static var recordNotExist: InvalidParameterValue {
            InvalidParameterValue(.recordNotExist)
        }

        /// 最多创建100个录制计划。
        public static var recordPlanBeyondLimit: InvalidParameterValue {
            InvalidParameterValue(.recordPlanBeyondLimit)
        }

        /// 超过创建条目限制。
        public static var ruleLimit: InvalidParameterValue {
            InvalidParameterValue(.ruleLimit)
        }

        /// 规则不存在。
        public static var ruleNotExist: InvalidParameterValue {
            InvalidParameterValue(.ruleNotExist)
        }

        /// 流Id不合法。
        public static var streamId: InvalidParameterValue {
            InvalidParameterValue(.streamId)
        }

        /// 流不存在，请检查设备配置。
        public static var streamInfoNotExist: InvalidParameterValue {
            InvalidParameterValue(.streamInfoNotExist)
        }

        /// 最多创建100个时间模板。
        public static var templateBeyondLimit: InvalidParameterValue {
            InvalidParameterValue(.templateBeyondLimit)
        }

        /// 模板时间片段为空。
        public static var templateSpecEmpty: InvalidParameterValue {
            InvalidParameterValue(.templateSpecEmpty)
        }

        /// 请求时间粒度不支持。
        public static var timeSpecNotSupport: InvalidParameterValue {
            InvalidParameterValue(.timeSpecNotSupport)
        }

        /// 请求类型不支持。
        public static var typeNotSupport: InvalidParameterValue {
            InvalidParameterValue(.typeNotSupport)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asIotvideoindustryError() -> TCIotvideoindustryError {
            let code: TCIotvideoindustryError.Code
            switch self.error {
            case .balanceNotEnough:
                code = .invalidParameterValue_BalanceNotEnough
            case .deviceDataMapError:
                code = .invalidParameterValue_DeviceDataMapError
            case .deviceId:
                code = .invalidParameterValue_DeviceId
            case .deviceInfoNotExist:
                code = .invalidParameterValue_DeviceInfoNotExist
            case .deviceOffline:
                code = .invalidParameterValue_DeviceOffline
            case .deviceOnline:
                code = .invalidParameterValue_DeviceOnline
            case .deviceTypeNotSupport:
                code = .invalidParameterValue_DeviceTypeNotSupport
            case .domainId:
                code = .invalidParameterValue_DomainId
            case .expireTime:
                code = .invalidParameterValue_ExpireTime
            case .groupDomainidExtraInformation:
                code = .invalidParameterValue_GroupDomainidExtraInformation
            case .groupDomainidNotUpdate:
                code = .invalidParameterValue_GroupDomainidNotUpdate
            case .groupParmsError:
                code = .invalidParameterValue_GroupParmsError
            case .recordNotExist:
                code = .invalidParameterValue_RecordNotExist
            case .recordPlanBeyondLimit:
                code = .invalidParameterValue_RecordPlanBeyondLimit
            case .ruleLimit:
                code = .invalidParameterValue_RuleLimit
            case .ruleNotExist:
                code = .invalidParameterValue_RuleNotExist
            case .streamId:
                code = .invalidParameterValue_StreamId
            case .streamInfoNotExist:
                code = .invalidParameterValue_StreamInfoNotExist
            case .templateBeyondLimit:
                code = .invalidParameterValue_TemplateBeyondLimit
            case .templateSpecEmpty:
                code = .invalidParameterValue_TemplateSpecEmpty
            case .timeSpecNotSupport:
                code = .invalidParameterValue_TimeSpecNotSupport
            case .typeNotSupport:
                code = .invalidParameterValue_TypeNotSupport
            case .other:
                code = .invalidParameterValue
            }
            return TCIotvideoindustryError(code, context: self.context)
        }
    }
}
