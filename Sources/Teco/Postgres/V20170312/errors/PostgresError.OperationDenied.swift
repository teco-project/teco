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

extension TCPostgresError {
    public struct OperationDenied: TCPostgresErrorType {
        enum Code: String {
            case camDeniedError = "OperationDenied.CamDeniedError"
            case dtsInstanceStatusError = "OperationDenied.DTSInstanceStatusError"
            case instanceAccessDeniedError = "OperationDenied.InstanceAccessDeniedError"
            case instanceIpv6NotSupportedError = "OperationDenied.InstanceIpv6NotSupportedError"
            case instanceStatusDeniedError = "OperationDenied.InstanceStatusDeniedError"
            case instanceStatusLimitError = "OperationDenied.InstanceStatusLimitError"
            case instanceStatusLimitOpError = "OperationDenied.InstanceStatusLimitOpError"
            case notSupportZoneError = "OperationDenied.NotSupportZoneError"
            case payModeError = "OperationDenied.PayModeError"
            case postPaidPayModeError = "OperationDenied.PostPaidPayModeError"
            case roGroupStatusError = "OperationDenied.ROGroupStatusError"
            case roInstanceCountExeedError = "OperationDenied.RoInstanceCountExeedError"
            case roInstanceIpv6NotSupportedError = "OperationDenied.ROInstanceIpv6NotSupportedError"
            case roInstanceStatusLimitOpError = "OperationDenied.ROInstanceStatusLimitOpError"
            case userNotAuthenticatedError = "OperationDenied.UserNotAuthenticatedError"
            case versionNotSupportError = "OperationDenied.VersionNotSupportError"
            case vpcDeniedError = "OperationDenied.VpcDeniedError"
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
        public static var camDeniedError: OperationDenied {
            OperationDenied(.camDeniedError)
        }

        /// ????????????????????????????????????
        public static var dtsInstanceStatusError: OperationDenied {
            OperationDenied(.dtsInstanceStatusError)
        }

        /// ????????????????????????????????????
        public static var instanceAccessDeniedError: OperationDenied {
            OperationDenied(.instanceAccessDeniedError)
        }

        /// ?????????ipv6???
        public static var instanceIpv6NotSupportedError: OperationDenied {
            OperationDenied(.instanceIpv6NotSupportedError)
        }

        /// ?????????????????????????????????
        public static var instanceStatusDeniedError: OperationDenied {
            OperationDenied(.instanceStatusDeniedError)
        }

        /// ???????????????????????????????????????
        public static var instanceStatusLimitError: OperationDenied {
            OperationDenied(.instanceStatusLimitError)
        }

        /// ?????????????????????????????????
        public static var instanceStatusLimitOpError: OperationDenied {
            OperationDenied(.instanceStatusLimitOpError)
        }

        /// Serverless???????????????????????????
        public static var notSupportZoneError: OperationDenied {
            OperationDenied(.notSupportZoneError)
        }

        /// ???????????????????????????
        public static var payModeError: OperationDenied {
            OperationDenied(.payModeError)
        }

        /// ????????????????????????????????????
        public static var postPaidPayModeError: OperationDenied {
            OperationDenied(.postPaidPayModeError)
        }

        /// ????????????????????????????????????
        public static var roGroupStatusError: OperationDenied {
            OperationDenied(.roGroupStatusError)
        }

        /// ??????????????????????????????????????????
        public static var roInstanceCountExeedError: OperationDenied {
            OperationDenied(.roInstanceCountExeedError)
        }

        /// ?????????????????????ipv6???
        public static var roInstanceIpv6NotSupportedError: OperationDenied {
            OperationDenied(.roInstanceIpv6NotSupportedError)
        }

        public static var roInstanceStatusLimitOpError: OperationDenied {
            OperationDenied(.roInstanceStatusLimitOpError)
        }

        /// ?????????????????????????????????????????????????????????????????????
        public static var userNotAuthenticatedError: OperationDenied {
            OperationDenied(.userNotAuthenticatedError)
        }

        /// Serverless?????????????????????
        public static var versionNotSupportError: OperationDenied {
            OperationDenied(.versionNotSupportError)
        }

        /// ????????????????????????VPC?????????
        public static var vpcDeniedError: OperationDenied {
            OperationDenied(.vpcDeniedError)
        }

        public func asPostgresError() -> TCPostgresError {
            let code: TCPostgresError.Code
            switch self.error {
            case .camDeniedError: 
                code = .operationDenied_CamDeniedError
            case .dtsInstanceStatusError: 
                code = .operationDenied_DTSInstanceStatusError
            case .instanceAccessDeniedError: 
                code = .operationDenied_InstanceAccessDeniedError
            case .instanceIpv6NotSupportedError: 
                code = .operationDenied_InstanceIpv6NotSupportedError
            case .instanceStatusDeniedError: 
                code = .operationDenied_InstanceStatusDeniedError
            case .instanceStatusLimitError: 
                code = .operationDenied_InstanceStatusLimitError
            case .instanceStatusLimitOpError: 
                code = .operationDenied_InstanceStatusLimitOpError
            case .notSupportZoneError: 
                code = .operationDenied_NotSupportZoneError
            case .payModeError: 
                code = .operationDenied_PayModeError
            case .postPaidPayModeError: 
                code = .operationDenied_PostPaidPayModeError
            case .roGroupStatusError: 
                code = .operationDenied_ROGroupStatusError
            case .roInstanceCountExeedError: 
                code = .operationDenied_RoInstanceCountExeedError
            case .roInstanceIpv6NotSupportedError: 
                code = .operationDenied_ROInstanceIpv6NotSupportedError
            case .roInstanceStatusLimitOpError: 
                code = .operationDenied_ROInstanceStatusLimitOpError
            case .userNotAuthenticatedError: 
                code = .operationDenied_UserNotAuthenticatedError
            case .versionNotSupportError: 
                code = .operationDenied_VersionNotSupportError
            case .vpcDeniedError: 
                code = .operationDenied_VpcDeniedError
            }
            return TCPostgresError(code, context: self.context)
        }
    }
}
