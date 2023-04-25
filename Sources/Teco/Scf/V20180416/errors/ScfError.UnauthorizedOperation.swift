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

extension TCScfError {
    public struct UnauthorizedOperation: TCScfErrorType {
        enum Code: String {
            case cam = "UnauthorizedOperation.CAM"
            case codeSecret = "UnauthorizedOperation.CodeSecret"
            case createTrigger = "UnauthorizedOperation.CreateTrigger"
            case deleteFunction = "UnauthorizedOperation.DeleteFunction"
            case deleteTrigger = "UnauthorizedOperation.DeleteTrigger"
            case notMC = "UnauthorizedOperation.NotMC"
            case region = "UnauthorizedOperation.Region"
            case role = "UnauthorizedOperation.Role"
            case tempCosAppid = "UnauthorizedOperation.TempCosAppid"
            case updateFunctionCode = "UnauthorizedOperation.UpdateFunctionCode"
            case updateTriggerStatus = "UnauthorizedOperation.UpdateTriggerStatus"
            case other = "UnauthorizedOperation"
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

        /// CAM鉴权失败。
        public static var cam: UnauthorizedOperation {
            UnauthorizedOperation(.cam)
        }

        /// 无访问代码权限。
        public static var codeSecret: UnauthorizedOperation {
            UnauthorizedOperation(.codeSecret)
        }

        /// 没有权限。
        public static var createTrigger: UnauthorizedOperation {
            UnauthorizedOperation(.createTrigger)
        }

        /// 没有权限的操作。
        public static var deleteFunction: UnauthorizedOperation {
            UnauthorizedOperation(.deleteFunction)
        }

        /// 没有权限。
        public static var deleteTrigger: UnauthorizedOperation {
            UnauthorizedOperation(.deleteTrigger)
        }

        /// 不是从控制台调用的该接口。
        public static var notMC: UnauthorizedOperation {
            UnauthorizedOperation(.notMC)
        }

        /// Region错误。
        public static var region: UnauthorizedOperation {
            UnauthorizedOperation(.region)
        }

        /// 没有权限访问您的Cos资源。
        public static var role: UnauthorizedOperation {
            UnauthorizedOperation(.role)
        }

        /// TempCos的Appid和请求账户的APPID不一致。
        public static var tempCosAppid: UnauthorizedOperation {
            UnauthorizedOperation(.tempCosAppid)
        }

        /// 无法进行此操作。
        public static var updateFunctionCode: UnauthorizedOperation {
            UnauthorizedOperation(.updateFunctionCode)
        }

        /// 没有权限。
        public static var updateTriggerStatus: UnauthorizedOperation {
            UnauthorizedOperation(.updateTriggerStatus)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asScfError() -> TCScfError {
            let code: TCScfError.Code
            switch self.error {
            case .cam:
                code = .unauthorizedOperation_CAM
            case .codeSecret:
                code = .unauthorizedOperation_CodeSecret
            case .createTrigger:
                code = .unauthorizedOperation_CreateTrigger
            case .deleteFunction:
                code = .unauthorizedOperation_DeleteFunction
            case .deleteTrigger:
                code = .unauthorizedOperation_DeleteTrigger
            case .notMC:
                code = .unauthorizedOperation_NotMC
            case .region:
                code = .unauthorizedOperation_Region
            case .role:
                code = .unauthorizedOperation_Role
            case .tempCosAppid:
                code = .unauthorizedOperation_TempCosAppid
            case .updateFunctionCode:
                code = .unauthorizedOperation_UpdateFunctionCode
            case .updateTriggerStatus:
                code = .unauthorizedOperation_UpdateTriggerStatus
            case .other:
                code = .unauthorizedOperation
            }
            return TCScfError(code, context: self.context)
        }
    }
}
