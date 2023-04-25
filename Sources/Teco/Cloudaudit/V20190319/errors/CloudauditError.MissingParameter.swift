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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCCloudauditError {
    public struct MissingParameter: TCCloudauditErrorType {
        enum Code: String {
            case cmq = "MissingParameter.cmq"
            case missAuditName = "MissingParameter.MissAuditName"
            case missCosBucketName = "MissingParameter.MissCosBucketName"
            case missCosRegion = "MissingParameter.MissCosRegion"
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

        /// IsEnableCmqNotify输入1的话，IsCreateNewQueue、CmqQueueName和CmqRegion都是必须参数。
        public static var cmq: MissingParameter {
            MissingParameter(.cmq)
        }

        /// 缺少跟踪集名称
        public static var missAuditName: MissingParameter {
            MissingParameter(.missAuditName)
        }

        /// 缺少cos存储桶参数
        public static var missCosBucketName: MissingParameter {
            MissingParameter(.missCosBucketName)
        }

        /// 缺少cos地域参数
        public static var missCosRegion: MissingParameter {
            MissingParameter(.missCosRegion)
        }

        public func asCloudauditError() -> TCCloudauditError {
            let code: TCCloudauditError.Code
            switch self.error {
            case .cmq:
                code = .missingParameter_cmq
            case .missAuditName:
                code = .missingParameter_MissAuditName
            case .missCosBucketName:
                code = .missingParameter_MissCosBucketName
            case .missCosRegion:
                code = .missingParameter_MissCosRegion
            }
            return TCCloudauditError(code, context: self.context)
        }
    }
}
