//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCDomainError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case certificateCodeIsInvalid = "InvalidParameter.CertificateCodeIsInvalid"
            case certificateImageIsInvalid = "InvalidParameter.CertificateImageIsInvalid"
            case codeTypeIsInvalid = "InvalidParameter.CodeTypeIsInvalid"
            case customDnsNotAllowed = "InvalidParameter.CustomDnsNotAllowed"
            case domainNameIsInvalid = "InvalidParameter.DomainNameIsInvalid"
            case duplicateDomainExists = "InvalidParameter.DuplicateDomainExists"
            case emailIsInvalid = "InvalidParameter.EmailIsInvalid"
            case emailIsUnverified = "InvalidParameter.EmailIsUnverified"
            case imageExtInvalid = "InvalidParameter.ImageExtInvalid"
            case imageFileIsInvalid = "InvalidParameter.ImageFileIsInvalid"
            case imageFormatIsInvalid = "InvalidParameter.ImageFormatIsInvalid"
            case imageSizeBelow = "InvalidParameter.ImageSizeBelow"
            case imageSizeExceed = "InvalidParameter.ImageSizeExceed"
            case imageSizeLimit = "InvalidParameter.ImageSizeLimit"
            case nameIsInvalid = "InvalidParameter.NameIsInvalid"
            case nameIsKeyword = "InvalidParameter.NameIsKeyword"
            case orgIsInvalid = "InvalidParameter.OrgIsInvalid"
            case orgIsKeyword = "InvalidParameter.OrgIsKeyword"
            case packageResourceIdInvalid = "InvalidParameter.PackageResourceIdInvalid"
            case repTypeIsInvalid = "InvalidParameter.RepTypeIsInvalid"
            case streetIsInvalid = "InvalidParameter.StreetIsInvalid"
            case telephoneIsInvalid = "InvalidParameter.TelephoneIsInvalid"
            case telephoneIsUnverified = "InvalidParameter.TelephoneIsUnverified"
            case upTo4000 = "InvalidParameter.UpTo4000"
            case userTypeIsInvalid = "InvalidParameter.UserTypeIsInvalid"
            case verifyCodeIsInvalid = "InvalidParameter.VerifyCodeIsInvalid"
            case zipCodeIsInvalid = "InvalidParameter.ZipCodeIsInvalid"
            case other = "InvalidParameter"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 资质信息输入不正确。
        public static var certificateCodeIsInvalid: InvalidParameter {
            InvalidParameter(.certificateCodeIsInvalid)
        }
        
        /// 资质照片输入不正确。
        public static var certificateImageIsInvalid: InvalidParameter {
            InvalidParameter(.certificateImageIsInvalid)
        }
        
        /// 类型只能为手机或者邮箱。
        public static var codeTypeIsInvalid: InvalidParameter {
            InvalidParameter(.codeTypeIsInvalid)
        }
        
        /// 无权限自定义DNS。
        public static var customDnsNotAllowed: InvalidParameter {
            InvalidParameter(.customDnsNotAllowed)
        }
        
        /// 域名输入为空或者不合法。
        public static var domainNameIsInvalid: InvalidParameter {
            InvalidParameter(.domainNameIsInvalid)
        }
        
        /// 存在重复域名，请检查后重新提交。
        public static var duplicateDomainExists: InvalidParameter {
            InvalidParameter(.duplicateDomainExists)
        }
        
        /// 邮箱为空或者不合法。
        public static var emailIsInvalid: InvalidParameter {
            InvalidParameter(.emailIsInvalid)
        }
        
        /// 仅支持已验证的电子邮箱，请先在控制台创建后使用
        public static var emailIsUnverified: InvalidParameter {
            InvalidParameter(.emailIsUnverified)
        }
        
        /// 不支持该格式文件，请上传 JPG、JPEG 格式图片（可使用第三方图片格式转换工具）。
        public static var imageExtInvalid: InvalidParameter {
            InvalidParameter(.imageExtInvalid)
        }
        
        /// 上传的照片参数为空或者不合法。
        public static var imageFileIsInvalid: InvalidParameter {
            InvalidParameter(.imageFileIsInvalid)
        }
        
        /// 非标准的 JPG、JPEG 格式图片，请使用工具转换格式后重新上传（可使用第三方图片格式转换工具）。
        public static var imageFormatIsInvalid: InvalidParameter {
            InvalidParameter(.imageFormatIsInvalid)
        }
        
        /// 图片大小低于最小限制(55KB)，请重新上传。
        public static var imageSizeBelow: InvalidParameter {
            InvalidParameter(.imageSizeBelow)
        }
        
        /// 图片过大，请减小后重试。
        public static var imageSizeExceed: InvalidParameter {
            InvalidParameter(.imageSizeExceed)
        }
        
        /// 图片大小超过限制(1M)，请重新上传。
        public static var imageSizeLimit: InvalidParameter {
            InvalidParameter(.imageSizeLimit)
        }
        
        /// 联系人为空或者不合法。
        public static var nameIsInvalid: InvalidParameter {
            InvalidParameter(.nameIsInvalid)
        }
        
        /// 联系人填写有误，或因其他原因无法使用，请更换其他联系人。
        public static var nameIsKeyword: InvalidParameter {
            InvalidParameter(.nameIsKeyword)
        }
        
        /// 注册人为空或者不合法。
        public static var orgIsInvalid: InvalidParameter {
            InvalidParameter(.orgIsInvalid)
        }
        
        /// 域名所有者填写有误，或因其他原因无法使用，请更换其他域名所有者。
        public static var orgIsKeyword: InvalidParameter {
            InvalidParameter(.orgIsKeyword)
        }
        
        /// 特惠包ID无效。
        public static var packageResourceIdInvalid: InvalidParameter {
            InvalidParameter(.packageResourceIdInvalid)
        }
        
        /// 请求类型错误。
        public static var repTypeIsInvalid: InvalidParameter {
            InvalidParameter(.repTypeIsInvalid)
        }
        
        /// 地址有误，请传入正确的地址。
        public static var streetIsInvalid: InvalidParameter {
            InvalidParameter(.streetIsInvalid)
        }
        
        /// 电话为空或者不合法。
        public static var telephoneIsInvalid: InvalidParameter {
            InvalidParameter(.telephoneIsInvalid)
        }
        
        /// 仅支持已验证的手机号码，请先在控制台创建后使用。
        public static var telephoneIsUnverified: InvalidParameter {
            InvalidParameter(.telephoneIsUnverified)
        }
        
        /// 域名数量不能超过4000个。
        public static var upTo4000: InvalidParameter {
            InvalidParameter(.upTo4000)
        }
        
        /// 用户类型为空或者不合法。
        public static var userTypeIsInvalid: InvalidParameter {
            InvalidParameter(.userTypeIsInvalid)
        }
        
        /// 验证码错误，请重新输入。
        public static var verifyCodeIsInvalid: InvalidParameter {
            InvalidParameter(.verifyCodeIsInvalid)
        }
        
        /// 邮编为空或者不合法。
        public static var zipCodeIsInvalid: InvalidParameter {
            InvalidParameter(.zipCodeIsInvalid)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCDomainError.InvalidParameter: Equatable {
    public static func == (lhs: TCDomainError.InvalidParameter, rhs: TCDomainError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDomainError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCDomainError.InvalidParameter {
    public func toDomainError() -> TCDomainError {
        guard let code = TCDomainError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCDomainError(code, context: self.context)
    }
}