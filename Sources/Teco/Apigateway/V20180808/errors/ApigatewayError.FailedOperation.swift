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

extension TCApigatewayError {
    public struct FailedOperation: TCApigatewayErrorType {
        enum Code: String {
            case accessKeyExist = "FailedOperation.AccessKeyExist"
            case apiBindEnvironmen = "FailedOperation.ApiBindEnvironmen"
            case apiBindEnvironment = "FailedOperation.ApiBindEnvironment"
            case apiError = "FailedOperation.ApiError"
            case apiInOperation = "FailedOperation.ApiInOperation"
            case backendDomainError = "FailedOperation.BackendDomainError"
            case camException = "FailedOperation.CamException"
            case certificateIdBindError = "FailedOperation.CertificateIdBindError"
            case certificateIdEnterpriseWaitSubmit = "FailedOperation.CertificateIdEnterpriseWaitSubmit"
            case certificateIdError = "FailedOperation.CertificateIdError"
            case certificateIdExpired = "FailedOperation.CertificateIdExpired"
            case certificateIdInfoError = "FailedOperation.CertificateIdInfoError"
            case certificateIdUnderVerify = "FailedOperation.CertificateIdUnderVerify"
            case certificateIdUnknownError = "FailedOperation.CertificateIdUnknownError"
            case certificateIdVerifyFail = "FailedOperation.CertificateIdVerifyFail"
            case certificateIsNull = "FailedOperation.CertificateIsNull"
            case clsError = "FailedOperation.ClsError"
            case codingError = "FailedOperation.CodingError"
            case defineMappingEnvironmentError = "FailedOperation.DefineMappingEnvironmentError"
            case defineMappingNotNull = "FailedOperation.DefineMappingNotNull"
            case defineMappingParamRepeat = "FailedOperation.DefineMappingParamRepeat"
            case defineMappingPathError = "FailedOperation.DefineMappingPathError"
            case deletePathMappingSetError = "FailedOperation.DeletePathMappingSetError"
            case describeServiceSubDomainsError = "FailedOperation.DescribeServiceSubDomainsError"
            case domainAlreadyBindOtherService = "FailedOperation.DomainAlreadyBindOtherService"
            case domainAlreadyBindService = "FailedOperation.DomainAlreadyBindService"
            case domainInBlackList = "FailedOperation.DomainInBlackList"
            case domainNeedBeian = "FailedOperation.DomainNeedBeian"
            case domainNotBindService = "FailedOperation.DomainNotBindService"
            case domainResolveError = "FailedOperation.DomainResolveError"
            case ebError = "FailedOperation.EbError"
            case eiamError = "FailedOperation.EIAMError"
            case formatError = "FailedOperation.FormatError"
            case getRoleError = "FailedOperation.GetRoleError"
            case instanceNotExist = "FailedOperation.InstanceNotExist"
            case isDefaultMapping = "FailedOperation.IsDefaultMapping"
            case netSubDomainError = "FailedOperation.NetSubDomainError"
            case operateUpstream = "FailedOperation.OperateUpstream"
            case pathMappingSetError = "FailedOperation.PathMappingSetError"
            case scfError = "FailedOperation.ScfError"
            case serviceError = "FailedOperation.ServiceError"
            case serviceInOperation = "FailedOperation.ServiceInOperation"
            case serviceNotExist = "FailedOperation.ServiceNotExist"
            case setCustomPathMappingError = "FailedOperation.SetCustomPathMappingError"
            case subDomainFormatError = "FailedOperation.SubDomainFormatError"
            case tagBindServiceError = "FailedOperation.TagBindServiceError"
            case unknownProtocolTypeError = "FailedOperation.UnknownProtocolTypeError"
            case other = "FailedOperation"
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

        /// 自定义密钥已存在。
        public static var accessKeyExist: FailedOperation {
            FailedOperation(.accessKeyExist)
        }

        /// 该api绑定了使用计划。
        public static var apiBindEnvironmen: FailedOperation {
            FailedOperation(.apiBindEnvironmen)
        }

        /// Apis 绑定了使用计划，请先解绑再试。
        public static var apiBindEnvironment: FailedOperation {
            FailedOperation(.apiBindEnvironment)
        }

        /// api类错误。
        public static var apiError: FailedOperation {
            FailedOperation(.apiError)
        }

        /// 当前API正在操作中，请稍后再试。
        public static var apiInOperation: FailedOperation {
            FailedOperation(.apiInOperation)
        }

        public static var backendDomainError: FailedOperation {
            FailedOperation(.backendDomainError)
        }

        public static var camException: FailedOperation {
            FailedOperation(.camException)
        }

        /// 证书绑定错误。
        public static var certificateIdBindError: FailedOperation {
            FailedOperation(.certificateIdBindError)
        }

        /// 该证书为企业证书，待提交。
        public static var certificateIdEnterpriseWaitSubmit: FailedOperation {
            FailedOperation(.certificateIdEnterpriseWaitSubmit)
        }

        /// 证书不存在或者您没有权限查看，请在ssl证书管理平台上传有效证书。
        public static var certificateIdError: FailedOperation {
            FailedOperation(.certificateIdError)
        }

        /// 证书已过期，请上传其他有效证书。
        public static var certificateIdExpired: FailedOperation {
            FailedOperation(.certificateIdExpired)
        }

        /// 该证书信息内容为空，请联系证书同事。
        public static var certificateIdInfoError: FailedOperation {
            FailedOperation(.certificateIdInfoError)
        }

        /// 该证书处于审核中状态，请上传其他有效证书。
        public static var certificateIdUnderVerify: FailedOperation {
            FailedOperation(.certificateIdUnderVerify)
        }

        /// 证书处于未知状态，请联系证书同事查看具体状态。
        public static var certificateIdUnknownError: FailedOperation {
            FailedOperation(.certificateIdUnknownError)
        }

        /// 证书处于审核失败状态，请上传其他有效证书。
        public static var certificateIdVerifyFail: FailedOperation {
            FailedOperation(.certificateIdVerifyFail)
        }

        /// Apis 证书为空，请上传证书。
        public static var certificateIsNull: FailedOperation {
            FailedOperation(.certificateIsNull)
        }

        /// 调用CLS服务失败。
        public static var clsError: FailedOperation {
            FailedOperation(.clsError)
        }

        /// API文档操作失败。
        public static var codingError: FailedOperation {
            FailedOperation(.codingError)
        }

        /// Apis 环境配置错误。
        public static var defineMappingEnvironmentError: FailedOperation {
            FailedOperation(.defineMappingEnvironmentError)
        }

        /// Apis自定义路径映射不能为空。
        public static var defineMappingNotNull: FailedOperation {
            FailedOperation(.defineMappingNotNull)
        }

        /// Apis 参数重复。
        public static var defineMappingParamRepeat: FailedOperation {
            FailedOperation(.defineMappingParamRepeat)
        }

        /// Apis自定义路径配置错误。
        public static var defineMappingPathError: FailedOperation {
            FailedOperation(.defineMappingPathError)
        }

        /// 删除自定义域名错误。
        public static var deletePathMappingSetError: FailedOperation {
            FailedOperation(.deletePathMappingSetError)
        }

        /// 服务自定义域名错误。
        public static var describeServiceSubDomainsError: FailedOperation {
            FailedOperation(.describeServiceSubDomainsError)
        }

        /// 该域名已经绑定其他服务。
        public static var domainAlreadyBindOtherService: FailedOperation {
            FailedOperation(.domainAlreadyBindOtherService)
        }

        /// 该域名已经绑定该服务。
        public static var domainAlreadyBindService: FailedOperation {
            FailedOperation(.domainAlreadyBindService)
        }

        /// 当前域名不满足合规要求，无法进行接入。
        public static var domainInBlackList: FailedOperation {
            FailedOperation(.domainInBlackList)
        }

        /// 该域名还未在腾讯云备案，请备案之后再绑定域名。
        public static var domainNeedBeian: FailedOperation {
            FailedOperation(.domainNeedBeian)
        }

        /// 自定义域名解绑失败，域名未绑定该服务。
        public static var domainNotBindService: FailedOperation {
            FailedOperation(.domainNotBindService)
        }

        /// 该域名未配置cname到默认域名，或者解析未生效。
        public static var domainResolveError: FailedOperation {
            FailedOperation(.domainResolveError)
        }

        /// 事件总线绑定/解绑失败。
        public static var ebError: FailedOperation {
            FailedOperation(.ebError)
        }

        /// EIAM返回错误。
        public static var eiamError: FailedOperation {
            FailedOperation(.eiamError)
        }

        /// 域名格式错误。
        public static var formatError: FailedOperation {
            FailedOperation(.formatError)
        }

        /// 获取角色失败，请确认完成API网关相关服务接口授权。
        public static var getRoleError: FailedOperation {
            FailedOperation(.getRoleError)
        }

        /// 实例不存在，或者无效状态。
        public static var instanceNotExist: FailedOperation {
            FailedOperation(.instanceNotExist)
        }

        /// Apis 自定义路径与默认路径冲突。
        public static var isDefaultMapping: FailedOperation {
            FailedOperation(.isDefaultMapping)
        }

        /// 默认的二级域名输入错误。
        public static var netSubDomainError: FailedOperation {
            FailedOperation(.netSubDomainError)
        }

        /// 操作后端通道失败。
        ///
        /// 重试
        public static var operateUpstream: FailedOperation {
            FailedOperation(.operateUpstream)
        }

        /// 设置路径映射错误。
        public static var pathMappingSetError: FailedOperation {
            FailedOperation(.pathMappingSetError)
        }

        /// SCF触发器绑定/解绑操作失败。
        public static var scfError: FailedOperation {
            FailedOperation(.scfError)
        }

        /// 服务相关的错误。
        public static var serviceError: FailedOperation {
            FailedOperation(.serviceError)
        }

        /// 当前Service正在操作中, 请稍后再试。
        public static var serviceInOperation: FailedOperation {
            FailedOperation(.serviceInOperation)
        }

        /// 服务不存在。
        public static var serviceNotExist: FailedOperation {
            FailedOperation(.serviceNotExist)
        }

        /// 自定义域名已使用默认路径映射，不支持设置自定义路径。
        public static var setCustomPathMappingError: FailedOperation {
            FailedOperation(.setCustomPathMappingError)
        }

        /// 自定义域名格式错误。
        public static var subDomainFormatError: FailedOperation {
            FailedOperation(.subDomainFormatError)
        }

        /// 标签绑定服务失败。
        public static var tagBindServiceError: FailedOperation {
            FailedOperation(.tagBindServiceError)
        }

        /// 协议类型错误。
        public static var unknownProtocolTypeError: FailedOperation {
            FailedOperation(.unknownProtocolTypeError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asApigatewayError() -> TCApigatewayError {
            let code: TCApigatewayError.Code
            switch self.error {
            case .accessKeyExist:
                code = .failedOperation_AccessKeyExist
            case .apiBindEnvironmen:
                code = .failedOperation_ApiBindEnvironmen
            case .apiBindEnvironment:
                code = .failedOperation_ApiBindEnvironment
            case .apiError:
                code = .failedOperation_ApiError
            case .apiInOperation:
                code = .failedOperation_ApiInOperation
            case .backendDomainError:
                code = .failedOperation_BackendDomainError
            case .camException:
                code = .failedOperation_CamException
            case .certificateIdBindError:
                code = .failedOperation_CertificateIdBindError
            case .certificateIdEnterpriseWaitSubmit:
                code = .failedOperation_CertificateIdEnterpriseWaitSubmit
            case .certificateIdError:
                code = .failedOperation_CertificateIdError
            case .certificateIdExpired:
                code = .failedOperation_CertificateIdExpired
            case .certificateIdInfoError:
                code = .failedOperation_CertificateIdInfoError
            case .certificateIdUnderVerify:
                code = .failedOperation_CertificateIdUnderVerify
            case .certificateIdUnknownError:
                code = .failedOperation_CertificateIdUnknownError
            case .certificateIdVerifyFail:
                code = .failedOperation_CertificateIdVerifyFail
            case .certificateIsNull:
                code = .failedOperation_CertificateIsNull
            case .clsError:
                code = .failedOperation_ClsError
            case .codingError:
                code = .failedOperation_CodingError
            case .defineMappingEnvironmentError:
                code = .failedOperation_DefineMappingEnvironmentError
            case .defineMappingNotNull:
                code = .failedOperation_DefineMappingNotNull
            case .defineMappingParamRepeat:
                code = .failedOperation_DefineMappingParamRepeat
            case .defineMappingPathError:
                code = .failedOperation_DefineMappingPathError
            case .deletePathMappingSetError:
                code = .failedOperation_DeletePathMappingSetError
            case .describeServiceSubDomainsError:
                code = .failedOperation_DescribeServiceSubDomainsError
            case .domainAlreadyBindOtherService:
                code = .failedOperation_DomainAlreadyBindOtherService
            case .domainAlreadyBindService:
                code = .failedOperation_DomainAlreadyBindService
            case .domainInBlackList:
                code = .failedOperation_DomainInBlackList
            case .domainNeedBeian:
                code = .failedOperation_DomainNeedBeian
            case .domainNotBindService:
                code = .failedOperation_DomainNotBindService
            case .domainResolveError:
                code = .failedOperation_DomainResolveError
            case .ebError:
                code = .failedOperation_EbError
            case .eiamError:
                code = .failedOperation_EIAMError
            case .formatError:
                code = .failedOperation_FormatError
            case .getRoleError:
                code = .failedOperation_GetRoleError
            case .instanceNotExist:
                code = .failedOperation_InstanceNotExist
            case .isDefaultMapping:
                code = .failedOperation_IsDefaultMapping
            case .netSubDomainError:
                code = .failedOperation_NetSubDomainError
            case .operateUpstream:
                code = .failedOperation_OperateUpstream
            case .pathMappingSetError:
                code = .failedOperation_PathMappingSetError
            case .scfError:
                code = .failedOperation_ScfError
            case .serviceError:
                code = .failedOperation_ServiceError
            case .serviceInOperation:
                code = .failedOperation_ServiceInOperation
            case .serviceNotExist:
                code = .failedOperation_ServiceNotExist
            case .setCustomPathMappingError:
                code = .failedOperation_SetCustomPathMappingError
            case .subDomainFormatError:
                code = .failedOperation_SubDomainFormatError
            case .tagBindServiceError:
                code = .failedOperation_TagBindServiceError
            case .unknownProtocolTypeError:
                code = .failedOperation_UnknownProtocolTypeError
            case .other:
                code = .failedOperation
            }
            return TCApigatewayError(code, context: self.context)
        }
    }
}
