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

extension TCCloudauditError {
    public struct ResourceInUse: TCCloudauditErrorType {
        enum Code: String {
            case alreadyExistsSameAudit = "ResourceInUse.AlreadyExistsSameAudit"
            case alreadyExistsSameAuditCmqConfig = "ResourceInUse.AlreadyExistsSameAuditCmqConfig"
            case alreadyExistsSameAuditCosConfig = "ResourceInUse.AlreadyExistsSameAuditCosConfig"
            case cosBucketExists = "ResourceInUse.CosBucketExists"
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

        /// 已经存在相同名称的跟踪集
        public static var alreadyExistsSameAudit: ResourceInUse {
            ResourceInUse(.alreadyExistsSameAudit)
        }

        /// 已经存在相同cmq投递配置的跟踪集
        public static var alreadyExistsSameAuditCmqConfig: ResourceInUse {
            ResourceInUse(.alreadyExistsSameAuditCmqConfig)
        }

        /// 已经存在相同cos投递配置的跟踪集
        public static var alreadyExistsSameAuditCosConfig: ResourceInUse {
            ResourceInUse(.alreadyExistsSameAuditCosConfig)
        }

        /// cos存储桶已经存在
        public static var cosBucketExists: ResourceInUse {
            ResourceInUse(.cosBucketExists)
        }

        public func asCloudauditError() -> TCCloudauditError {
            let code: TCCloudauditError.Code
            switch self.error {
            case .alreadyExistsSameAudit:
                code = .resourceInUse_AlreadyExistsSameAudit
            case .alreadyExistsSameAuditCmqConfig:
                code = .resourceInUse_AlreadyExistsSameAuditCmqConfig
            case .alreadyExistsSameAuditCosConfig:
                code = .resourceInUse_AlreadyExistsSameAuditCosConfig
            case .cosBucketExists:
                code = .resourceInUse_CosBucketExists
            }
            return TCCloudauditError(code, context: self.context)
        }
    }
}
