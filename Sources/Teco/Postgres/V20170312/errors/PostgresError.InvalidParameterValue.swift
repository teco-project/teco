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

extension TCPostgresError {
    public struct InvalidParameterValue: TCPostgresErrorType {
        enum Code: String {
            case accountExist = "InvalidParameterValue.AccountExist"
            case accountNotExist = "InvalidParameterValue.AccountNotExist"
            case accountNotExistError = "InvalidParameterValue.AccountNotExistError"
            case badSpec = "InvalidParameterValue.BadSpec"
            case charsetNotFoundError = "InvalidParameterValue.CharsetNotFoundError"
            case dataConvertError = "InvalidParameterValue.DataConvertError"
            case illegalChargeType = "InvalidParameterValue.IllegalChargeType"
            case illegalInstanceChargeType = "InvalidParameterValue.IllegalInstanceChargeType"
            case illegalProjectId = "InvalidParameterValue.IllegalProjectId"
            case illegalRegion = "InvalidParameterValue.IllegalRegion"
            case illegalZone = "InvalidParameterValue.IllegalZone"
            case instanceNameExist = "InvalidParameterValue.InstanceNameExist"
            case instanceNotExist = "InvalidParameterValue.InstanceNotExist"
            case interfaceNameNotFound = "InvalidParameterValue.InterfaceNameNotFound"
            case invalidAccountError = "InvalidParameterValue.InvalidAccountError"
            case invalidAccountFormat = "InvalidParameterValue.InvalidAccountFormat"
            case invalidAccountName = "InvalidParameterValue.InvalidAccountName"
            case invalidCharset = "InvalidParameterValue.InvalidCharset"
            case invalidInstanceNum = "InvalidParameterValue.InvalidInstanceNum"
            case invalidInstanceVolume = "InvalidParameterValue.InvalidInstanceVolume"
            case invalidOrderNum = "InvalidParameterValue.InvalidOrderNum"
            case invalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
            case invalidPasswordFormat = "InvalidParameterValue.InvalidPasswordFormat"
            case invalidPasswordLengthError = "InvalidParameterValue.InvalidPasswordLengthError"
            case invalidPasswordValueError = "InvalidParameterValue.InvalidPasswordValueError"
            case invalidPid = "InvalidParameterValue.InvalidPid"
            case invalidReadOnlyGroupStatus = "InvalidParameterValue.InvalidReadOnlyGroupStatus"
            case invalidZoneIdError = "InvalidParameterValue.InvalidZoneIdError"
            case nullDealNames = "InvalidParameterValue.NullDealNames"
            case parameterCharacterError = "InvalidParameterValue.ParameterCharacterError"
            case parameterCharacterLimitError = "InvalidParameterValue.ParameterCharacterLimitError"
            case parameterCharacterPreLimitError = "InvalidParameterValue.ParameterCharacterPreLimitError"
            case parameterHandleError = "InvalidParameterValue.ParameterHandleError"
            case parameterLengthLimitError = "InvalidParameterValue.ParameterLengthLimitError"
            case parameterOutRangeError = "InvalidParameterValue.ParameterOutRangeError"
            case parameterValueExceedError = "InvalidParameterValue.ParameterValueExceedError"
            case readOnlyGroupNotExist = "InvalidParameterValue.ReadOnlyGroupNotExist"
            case regionNotSupported = "InvalidParameterValue.RegionNotSupported"
            case specNotRecognizedError = "InvalidParameterValue.SpecNotRecognizedError"
            case structParseFailed = "InvalidParameterValue.StructParseFailed"
            case other = "InvalidParameterValue"
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

        /// 当前账号已存在。
        public static var accountExist: InvalidParameterValue {
            InvalidParameterValue(.accountExist)
        }

        /// 当前账号不存在。
        public static var accountNotExist: InvalidParameterValue {
            InvalidParameterValue(.accountNotExist)
        }

        /// 账号不存在。
        public static var accountNotExistError: InvalidParameterValue {
            InvalidParameterValue(.accountNotExistError)
        }

        /// 当前实例所要扩容的规格目前不售卖。
        public static var badSpec: InvalidParameterValue {
            InvalidParameterValue(.badSpec)
        }

        /// 数据库字符集错误。
        public static var charsetNotFoundError: InvalidParameterValue {
            InvalidParameterValue(.charsetNotFoundError)
        }

        /// 数据格式转换失败，请联系客服处理。
        public static var dataConvertError: InvalidParameterValue {
            InvalidParameterValue(.dataConvertError)
        }

        /// 不支持的计费类型。
        public static var illegalChargeType: InvalidParameterValue {
            InvalidParameterValue(.illegalChargeType)
        }

        /// 计费模式错误。
        public static var illegalInstanceChargeType: InvalidParameterValue {
            InvalidParameterValue(.illegalInstanceChargeType)
        }

        /// 非法ProjectId。
        public static var illegalProjectId: InvalidParameterValue {
            InvalidParameterValue(.illegalProjectId)
        }

        /// 非法的Region参数。
        public static var illegalRegion: InvalidParameterValue {
            InvalidParameterValue(.illegalRegion)
        }

        /// 非法的Zone参数。
        public static var illegalZone: InvalidParameterValue {
            InvalidParameterValue(.illegalZone)
        }

        /// 当前账号已存在。
        public static var instanceNameExist: InvalidParameterValue {
            InvalidParameterValue(.instanceNameExist)
        }

        /// 当前实例不存在。
        public static var instanceNotExist: InvalidParameterValue {
            InvalidParameterValue(.instanceNotExist)
        }

        /// ACTION输入错误。
        public static var interfaceNameNotFound: InvalidParameterValue {
            InvalidParameterValue(.interfaceNameNotFound)
        }

        /// 账号设置无效，请遵循账号命名规则：账号名需要1-16个字符，只能由字母、数字或下划线组成；不能为postgres；不能由数字和pg_开头；所有规则均不区分大小写。
        public static var invalidAccountError: InvalidParameterValue {
            InvalidParameterValue(.invalidAccountError)
        }

        /// 账号格式不正确。
        public static var invalidAccountFormat: InvalidParameterValue {
            InvalidParameterValue(.invalidAccountFormat)
        }

        /// 当前账号名称不允许是保留字符。
        public static var invalidAccountName: InvalidParameterValue {
            InvalidParameterValue(.invalidAccountName)
        }

        /// 数据库字符集错误，当前只支持UTF8、LATIN1。
        public static var invalidCharset: InvalidParameterValue {
            InvalidParameterValue(.invalidCharset)
        }

        /// 购买实例数超过限制。
        public static var invalidInstanceNum: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceNum)
        }

        /// 扩容后的实例规格不能小于当前实例规格。
        public static var invalidInstanceVolume: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceVolume)
        }

        /// 计费相关错误，订单类型ID无效。
        public static var invalidOrderNum: InvalidParameterValue {
            InvalidParameterValue(.invalidOrderNum)
        }

        /// 参数值有误。
        public static var invalidParameterValueError: InvalidParameterValue {
            InvalidParameterValue(.invalidParameterValueError)
        }

        /// 密码格式不正确。
        public static var invalidPasswordFormat: InvalidParameterValue {
            InvalidParameterValue(.invalidPasswordFormat)
        }

        /// 密码设置无效，长度不满足规则。
        public static var invalidPasswordLengthError: InvalidParameterValue {
            InvalidParameterValue(.invalidPasswordLengthError)
        }

        /// 密码设置无效，不能以“/”开头，必须包含大写字母、小写字母、符号()`~!@#$%^&amp;*-+=_|{}[]:;'&lt;&gt;,.?/和数字。
        public static var invalidPasswordValueError: InvalidParameterValue {
            InvalidParameterValue(.invalidPasswordValueError)
        }

        /// PID参数输入错误。
        public static var invalidPid: InvalidParameterValue {
            InvalidParameterValue(.invalidPid)
        }

        /// 只读实例组状态错误。
        public static var invalidReadOnlyGroupStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidReadOnlyGroupStatus)
        }

        /// 无效的可用区。
        public static var invalidZoneIdError: InvalidParameterValue {
            InvalidParameterValue(.invalidZoneIdError)
        }

        /// 输入订单名为空。
        public static var nullDealNames: InvalidParameterValue {
            InvalidParameterValue(.nullDealNames)
        }

        /// 参数无效，只允许英文字母、数字、下划线、中划线，以及全体汉字。
        public static var parameterCharacterError: InvalidParameterValue {
            InvalidParameterValue(.parameterCharacterError)
        }

        /// 参数不满足规则，请修改后重试。
        public static var parameterCharacterLimitError: InvalidParameterValue {
            InvalidParameterValue(.parameterCharacterLimitError)
        }

        /// 参数前缀设置不符合规则要求，请修改后重试。
        public static var parameterCharacterPreLimitError: InvalidParameterValue {
            InvalidParameterValue(.parameterCharacterPreLimitError)
        }

        /// 参数处理失败，请检参数值设置是否有效。
        public static var parameterHandleError: InvalidParameterValue {
            InvalidParameterValue(.parameterHandleError)
        }

        /// 参数长度超过限制。
        public static var parameterLengthLimitError: InvalidParameterValue {
            InvalidParameterValue(.parameterLengthLimitError)
        }

        /// 存在无效的参数值。
        public static var parameterOutRangeError: InvalidParameterValue {
            InvalidParameterValue(.parameterOutRangeError)
        }

        /// 参数值超过上限。
        public static var parameterValueExceedError: InvalidParameterValue {
            InvalidParameterValue(.parameterValueExceedError)
        }

        /// 只读实例组不存在。
        public static var readOnlyGroupNotExist: InvalidParameterValue {
            InvalidParameterValue(.readOnlyGroupNotExist)
        }

        /// 不支持当前地域。
        public static var regionNotSupported: InvalidParameterValue {
            InvalidParameterValue(.regionNotSupported)
        }

        /// 规格信息{{1}}无法被识别。
        public static var specNotRecognizedError: InvalidParameterValue {
            InvalidParameterValue(.specNotRecognizedError)
        }

        /// 解析参数出错。
        public static var structParseFailed: InvalidParameterValue {
            InvalidParameterValue(.structParseFailed)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asPostgresError() -> TCPostgresError {
            let code: TCPostgresError.Code
            switch self.error {
            case .accountExist:
                code = .invalidParameterValue_AccountExist
            case .accountNotExist:
                code = .invalidParameterValue_AccountNotExist
            case .accountNotExistError:
                code = .invalidParameterValue_AccountNotExistError
            case .badSpec:
                code = .invalidParameterValue_BadSpec
            case .charsetNotFoundError:
                code = .invalidParameterValue_CharsetNotFoundError
            case .dataConvertError:
                code = .invalidParameterValue_DataConvertError
            case .illegalChargeType:
                code = .invalidParameterValue_IllegalChargeType
            case .illegalInstanceChargeType:
                code = .invalidParameterValue_IllegalInstanceChargeType
            case .illegalProjectId:
                code = .invalidParameterValue_IllegalProjectId
            case .illegalRegion:
                code = .invalidParameterValue_IllegalRegion
            case .illegalZone:
                code = .invalidParameterValue_IllegalZone
            case .instanceNameExist:
                code = .invalidParameterValue_InstanceNameExist
            case .instanceNotExist:
                code = .invalidParameterValue_InstanceNotExist
            case .interfaceNameNotFound:
                code = .invalidParameterValue_InterfaceNameNotFound
            case .invalidAccountError:
                code = .invalidParameterValue_InvalidAccountError
            case .invalidAccountFormat:
                code = .invalidParameterValue_InvalidAccountFormat
            case .invalidAccountName:
                code = .invalidParameterValue_InvalidAccountName
            case .invalidCharset:
                code = .invalidParameterValue_InvalidCharset
            case .invalidInstanceNum:
                code = .invalidParameterValue_InvalidInstanceNum
            case .invalidInstanceVolume:
                code = .invalidParameterValue_InvalidInstanceVolume
            case .invalidOrderNum:
                code = .invalidParameterValue_InvalidOrderNum
            case .invalidParameterValueError:
                code = .invalidParameterValue_InvalidParameterValueError
            case .invalidPasswordFormat:
                code = .invalidParameterValue_InvalidPasswordFormat
            case .invalidPasswordLengthError:
                code = .invalidParameterValue_InvalidPasswordLengthError
            case .invalidPasswordValueError:
                code = .invalidParameterValue_InvalidPasswordValueError
            case .invalidPid:
                code = .invalidParameterValue_InvalidPid
            case .invalidReadOnlyGroupStatus:
                code = .invalidParameterValue_InvalidReadOnlyGroupStatus
            case .invalidZoneIdError:
                code = .invalidParameterValue_InvalidZoneIdError
            case .nullDealNames:
                code = .invalidParameterValue_NullDealNames
            case .parameterCharacterError:
                code = .invalidParameterValue_ParameterCharacterError
            case .parameterCharacterLimitError:
                code = .invalidParameterValue_ParameterCharacterLimitError
            case .parameterCharacterPreLimitError:
                code = .invalidParameterValue_ParameterCharacterPreLimitError
            case .parameterHandleError:
                code = .invalidParameterValue_ParameterHandleError
            case .parameterLengthLimitError:
                code = .invalidParameterValue_ParameterLengthLimitError
            case .parameterOutRangeError:
                code = .invalidParameterValue_ParameterOutRangeError
            case .parameterValueExceedError:
                code = .invalidParameterValue_ParameterValueExceedError
            case .readOnlyGroupNotExist:
                code = .invalidParameterValue_ReadOnlyGroupNotExist
            case .regionNotSupported:
                code = .invalidParameterValue_RegionNotSupported
            case .specNotRecognizedError:
                code = .invalidParameterValue_SpecNotRecognizedError
            case .structParseFailed:
                code = .invalidParameterValue_StructParseFailed
            case .other:
                code = .invalidParameterValue
            }
            return TCPostgresError(code, context: self.context)
        }
    }
}
