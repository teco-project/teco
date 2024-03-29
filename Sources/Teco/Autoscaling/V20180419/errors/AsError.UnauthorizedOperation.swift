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

extension TCAsError {
    public struct UnauthorizedOperation: TCAsErrorType {
        enum Code: String {
            case autoScalingRoleUnauthorized = "UnauthorizedOperation.AutoScalingRoleUnauthorized"
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

        /// 未授权弹性伸缩预设服务角色AS_QCSRole，请前往弹性伸缩控制台进行授权。
        ///
        /// 登陆弹性伸缩控制台，出现授权弹窗后，点击进行授权。
        public static var autoScalingRoleUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.autoScalingRoleUnauthorized)
        }

        public func asAsError() -> TCAsError {
            let code: TCAsError.Code
            switch self.error {
            case .autoScalingRoleUnauthorized:
                code = .unauthorizedOperation_AutoScalingRoleUnauthorized
            }
            return TCAsError(code, context: self.context)
        }
    }
}
