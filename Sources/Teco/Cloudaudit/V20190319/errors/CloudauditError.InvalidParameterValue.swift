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

extension TCCloudauditError {
    public struct InvalidParameterValue: TCCloudauditErrorType {
        enum Code: String {
            case aliasAlreadyExists = "InvalidParameterValue.AliasAlreadyExists"
            case attributeKey = "InvalidParameterValue.attributeKey"
            case auditNameError = "InvalidParameterValue.AuditNameError"
            case cmqRegionError = "InvalidParameterValue.CmqRegionError"
            case cosNameError = "InvalidParameterValue.CosNameError"
            case cosRegionError = "InvalidParameterValue.CosRegionError"
            case isCreateNewBucketError = "InvalidParameterValue.IsCreateNewBucketError"
            case isCreateNewQueueError = "InvalidParameterValue.IsCreateNewQueueError"
            case isEnableCmqNotifyError = "InvalidParameterValue.IsEnableCmqNotifyError"
            case kmsRegionError = "InvalidParameterValue.KmsRegionError"
            case logFilePrefixError = "InvalidParameterValue.LogFilePrefixError"
            case maxResult = "InvalidParameterValue.MaxResult"
            case queueNameError = "InvalidParameterValue.QueueNameError"
            case readWriteAttributeError = "InvalidParameterValue.ReadWriteAttributeError"
            case time = "InvalidParameterValue.Time"
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

        /// 别名已经存在
        public static var aliasAlreadyExists: InvalidParameterValue {
            InvalidParameterValue(.aliasAlreadyExists)
        }

        /// AttributeKey的有效取值范围是:RequestId、EventName、ReadOnly、Username、ResourceType、ResourceName和AccessKeyId
        public static var attributeKey: InvalidParameterValue {
            InvalidParameterValue(.attributeKey)
        }

        /// 跟踪集名称不符合规则
        public static var auditNameError: InvalidParameterValue {
            InvalidParameterValue(.auditNameError)
        }

        /// 云审计目前不支持输入的cmq地域
        public static var cmqRegionError: InvalidParameterValue {
            InvalidParameterValue(.cmqRegionError)
        }

        /// 输入的cos存储桶名称不符合规范
        public static var cosNameError: InvalidParameterValue {
            InvalidParameterValue(.cosNameError)
        }

        /// 云审计目前不支持输入的cos地域
        public static var cosRegionError: InvalidParameterValue {
            InvalidParameterValue(.cosRegionError)
        }

        /// IsCreateNewBucket的有效取值范围是0和1，0代表不创建新的存储桶，1代表创建新的存储桶。
        public static var isCreateNewBucketError: InvalidParameterValue {
            InvalidParameterValue(.isCreateNewBucketError)
        }

        /// IsCreateNewQueue的有效取值范围是0和1，0代表不新创建，1代表新创建。
        public static var isCreateNewQueueError: InvalidParameterValue {
            InvalidParameterValue(.isCreateNewQueueError)
        }

        /// IsEnableCmqNotify的有效取值范围是0和1，0代表不开启投递cmq,1代表开启cmq投递。
        public static var isEnableCmqNotifyError: InvalidParameterValue {
            InvalidParameterValue(.isEnableCmqNotifyError)
        }

        /// 云审计暂不支持该地域的KMS
        public static var kmsRegionError: InvalidParameterValue {
            InvalidParameterValue(.kmsRegionError)
        }

        /// 日志前缀格式错误
        public static var logFilePrefixError: InvalidParameterValue {
            InvalidParameterValue(.logFilePrefixError)
        }

        /// 单次检索支持的最大返回条数是50
        public static var maxResult: InvalidParameterValue {
            InvalidParameterValue(.maxResult)
        }

        /// 输入的队列名称不符合规范
        public static var queueNameError: InvalidParameterValue {
            InvalidParameterValue(.queueNameError)
        }

        /// 读写属性值仅支持：1,2,3。1代表只读，2代表只写，3代表全部。
        public static var readWriteAttributeError: InvalidParameterValue {
            InvalidParameterValue(.readWriteAttributeError)
        }

        /// 开始时间不能大于结束时间
        public static var time: InvalidParameterValue {
            InvalidParameterValue(.time)
        }

        public func asCloudauditError() -> TCCloudauditError {
            let code: TCCloudauditError.Code
            switch self.error {
            case .aliasAlreadyExists:
                code = .invalidParameterValue_AliasAlreadyExists
            case .attributeKey:
                code = .invalidParameterValue_attributeKey
            case .auditNameError:
                code = .invalidParameterValue_AuditNameError
            case .cmqRegionError:
                code = .invalidParameterValue_CmqRegionError
            case .cosNameError:
                code = .invalidParameterValue_CosNameError
            case .cosRegionError:
                code = .invalidParameterValue_CosRegionError
            case .isCreateNewBucketError:
                code = .invalidParameterValue_IsCreateNewBucketError
            case .isCreateNewQueueError:
                code = .invalidParameterValue_IsCreateNewQueueError
            case .isEnableCmqNotifyError:
                code = .invalidParameterValue_IsEnableCmqNotifyError
            case .kmsRegionError:
                code = .invalidParameterValue_KmsRegionError
            case .logFilePrefixError:
                code = .invalidParameterValue_LogFilePrefixError
            case .maxResult:
                code = .invalidParameterValue_MaxResult
            case .queueNameError:
                code = .invalidParameterValue_QueueNameError
            case .readWriteAttributeError:
                code = .invalidParameterValue_ReadWriteAttributeError
            case .time:
                code = .invalidParameterValue_Time
            }
            return TCCloudauditError(code, context: self.context)
        }
    }
}
