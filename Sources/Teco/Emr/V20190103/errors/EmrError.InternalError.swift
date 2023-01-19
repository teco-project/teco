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

extension TCEmrError {
    public struct InternalError: TCEmrErrorType {
        enum Code: String {
            case accountCgwError = "InternalError.AccountCgwError"
            case camCgwError = "InternalError.CamCgwError"
            case camError = "InternalError.CamError"
            case cbsCgwError = "InternalError.CbsCgwError"
            case cbsError = "InternalError.CbsError"
            case cdbCgwError = "InternalError.CdbCgwError"
            case cdbError = "InternalError.CdbError"
            case checkQuotaErr = "InternalError.CheckQuotaErr"
            case configCgwError = "InternalError.ConfigCgwError"
            case cvmError = "InternalError.CvmError"
            case eksError = "InternalError.EKSError"
            case kmsError = "InternalError.KmsError"
            case projectCgwError = "InternalError.ProjectCgwError"
            case sgError = "InternalError.SgError"
            case tagError = "InternalError.TagError"
            case tkeError = "InternalError.TKEError"
            case tradeCgwError = "InternalError.TradeCgwError"
            case vpcCgwError = "InternalError.VpcCgwError"
            case vpcError = "InternalError.VpcError"
            case woodServerError = "InternalError.WoodServerError"
            case other = "InternalError"
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

        /// 内部服务调用异常。
        public static var accountCgwError: InternalError {
            InternalError(.accountCgwError)
        }

        /// 内部服务调用异常。
        ///
        /// 占位符
        public static var camCgwError: InternalError {
            InternalError(.camCgwError)
        }

        /// 内部服务调用异常。
        public static var camError: InternalError {
            InternalError(.camError)
        }

        /// 内部服务调用异常。
        ///
        /// 占位符
        public static var cbsCgwError: InternalError {
            InternalError(.cbsCgwError)
        }

        /// 内部服务调用异常。
        public static var cbsError: InternalError {
            InternalError(.cbsError)
        }

        /// 内部服务调用异常。
        ///
        /// 占位符
        public static var cdbCgwError: InternalError {
            InternalError(.cdbCgwError)
        }

        /// 内部服务调用异常。
        public static var cdbError: InternalError {
            InternalError(.cdbError)
        }

        /// cvm或cbs资源不够或软件不合法。
        public static var checkQuotaErr: InternalError {
            InternalError(.checkQuotaErr)
        }

        /// 内部服务调用异常。
        public static var configCgwError: InternalError {
            InternalError(.configCgwError)
        }

        /// 内部服务调用异常。
        public static var cvmError: InternalError {
            InternalError(.cvmError)
        }

        /// 调用EKS报错。
        public static var eksError: InternalError {
            InternalError(.eksError)
        }

        /// 内部服务调用异常。
        public static var kmsError: InternalError {
            InternalError(.kmsError)
        }

        /// 内部服务调用异常。
        ///
        /// 占位符
        public static var projectCgwError: InternalError {
            InternalError(.projectCgwError)
        }

        /// 安全组接口调用异常。
        public static var sgError: InternalError {
            InternalError(.sgError)
        }

        /// 内部服务调用异常。
        public static var tagError: InternalError {
            InternalError(.tagError)
        }

        /// TKE调用出错。
        public static var tkeError: InternalError {
            InternalError(.tkeError)
        }

        /// 内部服务调用异常。
        ///
        /// 占位符
        public static var tradeCgwError: InternalError {
            InternalError(.tradeCgwError)
        }

        /// 内部服务调用异常。
        ///
        /// 占位符
        public static var vpcCgwError: InternalError {
            InternalError(.vpcCgwError)
        }

        /// 内部服务调用异常。
        public static var vpcError: InternalError {
            InternalError(.vpcError)
        }

        /// 内部服务调用异常。
        ///
        /// 占位符
        public static var woodServerError: InternalError {
            InternalError(.woodServerError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asEmrError() -> TCEmrError {
            let code: TCEmrError.Code
            switch self.error {
            case .accountCgwError:
                code = .internalError_AccountCgwError
            case .camCgwError:
                code = .internalError_CamCgwError
            case .camError:
                code = .internalError_CamError
            case .cbsCgwError:
                code = .internalError_CbsCgwError
            case .cbsError:
                code = .internalError_CbsError
            case .cdbCgwError:
                code = .internalError_CdbCgwError
            case .cdbError:
                code = .internalError_CdbError
            case .checkQuotaErr:
                code = .internalError_CheckQuotaErr
            case .configCgwError:
                code = .internalError_ConfigCgwError
            case .cvmError:
                code = .internalError_CvmError
            case .eksError:
                code = .internalError_EKSError
            case .kmsError:
                code = .internalError_KmsError
            case .projectCgwError:
                code = .internalError_ProjectCgwError
            case .sgError:
                code = .internalError_SgError
            case .tagError:
                code = .internalError_TagError
            case .tkeError:
                code = .internalError_TKEError
            case .tradeCgwError:
                code = .internalError_TradeCgwError
            case .vpcCgwError:
                code = .internalError_VpcCgwError
            case .vpcError:
                code = .internalError_VpcError
            case .woodServerError:
                code = .internalError_WoodServerError
            case .other:
                code = .internalError
            }
            return TCEmrError(code, context: self.context)
        }
    }
}
