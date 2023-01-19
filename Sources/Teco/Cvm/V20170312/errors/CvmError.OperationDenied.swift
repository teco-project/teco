//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCCvmError {
    public struct OperationDenied: TCCvmErrorType {
        enum Code: String {
            case chcInstallCloudImageWithoutDeployNetwork = "OperationDenied.ChcInstallCloudImageWithoutDeployNetwork"
            case innerUserProhibitAction = "OperationDenied.InnerUserProhibitAction"
            case instanceOperationInProgress = "OperationDenied.InstanceOperationInProgress"
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

        /// 不允许未配置部署网络的CHC安装云上镜像。
        public static var chcInstallCloudImageWithoutDeployNetwork: OperationDenied {
            OperationDenied(.chcInstallCloudImageWithoutDeployNetwork)
        }

        public static var innerUserProhibitAction: OperationDenied {
            OperationDenied(.innerUserProhibitAction)
        }

        /// 实例正在执行其他操作，请稍后再试。
        public static var instanceOperationInProgress: OperationDenied {
            OperationDenied(.instanceOperationInProgress)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .chcInstallCloudImageWithoutDeployNetwork:
                code = .operationDenied_ChcInstallCloudImageWithoutDeployNetwork
            case .innerUserProhibitAction:
                code = .operationDenied_InnerUserProhibitAction
            case .instanceOperationInProgress:
                code = .operationDenied_InstanceOperationInProgress
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
