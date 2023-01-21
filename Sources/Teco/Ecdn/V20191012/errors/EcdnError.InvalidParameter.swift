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

extension TCEcdnError {
    public struct InvalidParameter: TCEcdnErrorType {
        enum Code: String {
            case ecdnCamTagKeyNotExist = "InvalidParameter.EcdnCamTagKeyNotExist"
            case ecdnCertNoCertInfo = "InvalidParameter.EcdnCertNoCertInfo"
            case ecdnConfigInvalidCache = "InvalidParameter.EcdnConfigInvalidCache"
            case ecdnDomainInvalidStatus = "InvalidParameter.EcdnDomainInvalidStatus"
            case ecdnInterfaceError = "InvalidParameter.EcdnInterfaceError"
            case ecdnInvalidParamArea = "InvalidParameter.EcdnInvalidParamArea"
            case ecdnInvalidParamInterval = "InvalidParameter.EcdnInvalidParamInterval"
            case ecdnParamError = "InvalidParameter.EcdnParamError"
            case ecdnPurgeWildcardNotAllowed = "InvalidParameter.EcdnPurgeWildcardNotAllowed"
            case ecdnResourceManyTagKey = "InvalidParameter.EcdnResourceManyTagKey"
            case ecdnStatInvalidDate = "InvalidParameter.EcdnStatInvalidDate"
            case ecdnStatInvalidMetric = "InvalidParameter.EcdnStatInvalidMetric"
            case ecdnTagKeyInvalid = "InvalidParameter.EcdnTagKeyInvalid"
            case ecdnTagKeyNotExist = "InvalidParameter.EcdnTagKeyNotExist"
            case ecdnTagKeyTooManyValue = "InvalidParameter.EcdnTagKeyTooManyValue"
            case ecdnTagValueInvalid = "InvalidParameter.EcdnTagValueInvalid"
            case ecdnUrlExceedLength = "InvalidParameter.EcdnUrlExceedLength"
            case ecdnUserTooManyTagKey = "InvalidParameter.EcdnUserTooManyTagKey"
            case paramError = "InvalidParameter.ParamError"
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

        /// 标签键不存在。
        public static var ecdnCamTagKeyNotExist: InvalidParameter {
            InvalidParameter(.ecdnCamTagKeyNotExist)
        }

        /// 无法解析证书信息。
        public static var ecdnCertNoCertInfo: InvalidParameter {
            InvalidParameter(.ecdnCertNoCertInfo)
        }

        /// 缓存配置不合法 。
        public static var ecdnConfigInvalidCache: InvalidParameter {
            InvalidParameter(.ecdnConfigInvalidCache)
        }

        /// 域名状态不合法。
        public static var ecdnDomainInvalidStatus: InvalidParameter {
            InvalidParameter(.ecdnDomainInvalidStatus)
        }

        /// 内部接口错误，请联系腾讯云工程师进一步排查。
        public static var ecdnInterfaceError: InvalidParameter {
            InvalidParameter(.ecdnInterfaceError)
        }

        /// 非法Area参数，请参考文档中示例参数填充。
        public static var ecdnInvalidParamArea: InvalidParameter {
            InvalidParameter(.ecdnInvalidParamArea)
        }

        /// 统计粒度不合法，请参考文档中统计分析示例。
        public static var ecdnInvalidParamInterval: InvalidParameter {
            InvalidParameter(.ecdnInvalidParamInterval)
        }

        /// 参数错误，请参考文档中示例参数填充。
        public static var ecdnParamError: InvalidParameter {
            InvalidParameter(.ecdnParamError)
        }

        /// 刷新不支持泛域名。
        public static var ecdnPurgeWildcardNotAllowed: InvalidParameter {
            InvalidParameter(.ecdnPurgeWildcardNotAllowed)
        }

        /// 该域名绑定的标签键数量过多。
        public static var ecdnResourceManyTagKey: InvalidParameter {
            InvalidParameter(.ecdnResourceManyTagKey)
        }

        /// 日期不合法，请参考文档中日期示例。
        public static var ecdnStatInvalidDate: InvalidParameter {
            InvalidParameter(.ecdnStatInvalidDate)
        }

        /// 统计类型不合法，请参考文档中统计分析示例。
        public static var ecdnStatInvalidMetric: InvalidParameter {
            InvalidParameter(.ecdnStatInvalidMetric)
        }

        /// 标签键不合法。
        public static var ecdnTagKeyInvalid: InvalidParameter {
            InvalidParameter(.ecdnTagKeyInvalid)
        }

        /// 标签键不存在。
        public static var ecdnTagKeyNotExist: InvalidParameter {
            InvalidParameter(.ecdnTagKeyNotExist)
        }

        /// 标签键下的值数量过多。
        public static var ecdnTagKeyTooManyValue: InvalidParameter {
            InvalidParameter(.ecdnTagKeyTooManyValue)
        }

        /// 标签值不合法。
        public static var ecdnTagValueInvalid: InvalidParameter {
            InvalidParameter(.ecdnTagValueInvalid)
        }

        /// URL 超过限制长度。
        public static var ecdnUrlExceedLength: InvalidParameter {
            InvalidParameter(.ecdnUrlExceedLength)
        }

        /// 该用户下标签键数量过多。
        public static var ecdnUserTooManyTagKey: InvalidParameter {
            InvalidParameter(.ecdnUserTooManyTagKey)
        }

        /// 参数错误。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }

        public func asEcdnError() -> TCEcdnError {
            let code: TCEcdnError.Code
            switch self.error {
            case .ecdnCamTagKeyNotExist:
                code = .invalidParameter_EcdnCamTagKeyNotExist
            case .ecdnCertNoCertInfo:
                code = .invalidParameter_EcdnCertNoCertInfo
            case .ecdnConfigInvalidCache:
                code = .invalidParameter_EcdnConfigInvalidCache
            case .ecdnDomainInvalidStatus:
                code = .invalidParameter_EcdnDomainInvalidStatus
            case .ecdnInterfaceError:
                code = .invalidParameter_EcdnInterfaceError
            case .ecdnInvalidParamArea:
                code = .invalidParameter_EcdnInvalidParamArea
            case .ecdnInvalidParamInterval:
                code = .invalidParameter_EcdnInvalidParamInterval
            case .ecdnParamError:
                code = .invalidParameter_EcdnParamError
            case .ecdnPurgeWildcardNotAllowed:
                code = .invalidParameter_EcdnPurgeWildcardNotAllowed
            case .ecdnResourceManyTagKey:
                code = .invalidParameter_EcdnResourceManyTagKey
            case .ecdnStatInvalidDate:
                code = .invalidParameter_EcdnStatInvalidDate
            case .ecdnStatInvalidMetric:
                code = .invalidParameter_EcdnStatInvalidMetric
            case .ecdnTagKeyInvalid:
                code = .invalidParameter_EcdnTagKeyInvalid
            case .ecdnTagKeyNotExist:
                code = .invalidParameter_EcdnTagKeyNotExist
            case .ecdnTagKeyTooManyValue:
                code = .invalidParameter_EcdnTagKeyTooManyValue
            case .ecdnTagValueInvalid:
                code = .invalidParameter_EcdnTagValueInvalid
            case .ecdnUrlExceedLength:
                code = .invalidParameter_EcdnUrlExceedLength
            case .ecdnUserTooManyTagKey:
                code = .invalidParameter_EcdnUserTooManyTagKey
            case .paramError:
                code = .invalidParameter_ParamError
            }
            return TCEcdnError(code, context: self.context)
        }
    }
}
