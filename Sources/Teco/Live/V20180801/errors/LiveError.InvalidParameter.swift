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

extension TCLiveError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case argsNotMatch = "InvalidParameter.ArgsNotMatch"
            case cancelSessionNotExist = "InvalidParameter.CancelSessionNotExist"
            case cloudCrtIdError = "InvalidParameter.CloudCrtIdError"
            case cloudDomainIsStop = "InvalidParameter.CloudDomainIsStop"
            case cosCustomFileNameError = "InvalidParameter.COSCustomFileNameError"
            case crtDateInUsing = "InvalidParameter.CrtDateInUsing"
            case crtDateNotFound = "InvalidParameter.CrtDateNotFound"
            case crtDateNotLegal = "InvalidParameter.CrtDateNotLegal"
            case crtDateOverdue = "InvalidParameter.CrtDateOverdue"
            case crtDomainNotFound = "InvalidParameter.CrtDomainNotFound"
            case crtKeyNotMatch = "InvalidParameter.CrtKeyNotMatch"
            case crtOrKeyNotExist = "InvalidParameter.CrtOrKeyNotExist"
            case domainAlreadyExist = "InvalidParameter.DomainAlreadyExist"
            case domainFormatError = "InvalidParameter.DomainFormatError"
            case domainHitBlackList = "InvalidParameter.DomainHitBlackList"
            case domainIsFamous = "InvalidParameter.DomainIsFamous"
            case domainIsLimited = "InvalidParameter.DomainIsLimited"
            case domainTooLong = "InvalidParameter.DomainTooLong"
            case gopMustEqualAndExists = "InvalidParameter.GopMustEqualAndExists"
            case inputNumLimitExceeded = "InvalidParameter.InputNumLimitExceeded"
            case invalidBackgroudResolution = "InvalidParameter.InvalidBackgroudResolution"
            case invalidBitrate = "InvalidParameter.InvalidBitrate"
            case invalidCallbackUrl = "InvalidParameter.InvalidCallbackUrl"
            case invalidCropParam = "InvalidParameter.InvalidCropParam"
            case invalidLayerParam = "InvalidParameter.InvalidLayerParam"
            case invalidOutputStreamID = "InvalidParameter.InvalidOutputStreamID"
            case invalidOutputType = "InvalidParameter.InvalidOutputType"
            case invalidPictureID = "InvalidParameter.InvalidPictureID"
            case invalidRoundRectRadius = "InvalidParameter.InvalidRoundRectRadius"
            case invalidSourceUrl = "InvalidParameter.InvalidSourceUrl"
            case invalidTaskTime = "InvalidParameter.InvalidTaskTime"
            case invalidToUrl = "InvalidParameter.InvalidToUrl"
            case invalidVodFileName = "InvalidParameter.InvalidVodFileName"
            case invalidWatermark = "InvalidParameter.InvalidWatermark"
            case mpHostDelete = "InvalidParameter.MpHostDelete"
            case mpPluginNoUse = "InvalidParameter.MpPluginNoUse"
            case otherError = "InvalidParameter.OtherError"
            case sessionOutputStreamChanged = "InvalidParameter.SessionOutputStreamChanged"
            case taskNotExist = "InvalidParameter.TaskNotExist"
            case taskNumMoreThanLimit = "InvalidParameter.TaskNumMoreThanLimit"
            case templateNotMatchInputNum = "InvalidParameter.TemplateNotMatchInputNum"
            case toUrlNoPermission = "InvalidParameter.ToUrlNoPermission"
            case urlNotSafe = "InvalidParameter.UrlNotSafe"
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
        
        /// 错误的模板名。
        public static var argsNotMatch: InvalidParameter {
            InvalidParameter(.argsNotMatch)
        }
        
        /// 取消不存在的会话。
        public static var cancelSessionNotExist: InvalidParameter {
            InvalidParameter(.cancelSessionNotExist)
        }
        
        /// 腾讯云证书托管 ID 错误。
        public static var cloudCrtIdError: InvalidParameter {
            InvalidParameter(.cloudCrtIdError)
        }
        
        /// 赠送的腾讯云域名已过期。
        public static var cloudDomainIsStop: InvalidParameter {
            InvalidParameter(.cloudDomainIsStop)
        }
        
        /// Cos自定义文件名错误。
        public static var cosCustomFileNameError: InvalidParameter {
            InvalidParameter(.cosCustomFileNameError)
        }
        
        /// 证书使用中。
        public static var crtDateInUsing: InvalidParameter {
            InvalidParameter(.crtDateInUsing)
        }
        
        /// 证书不存在。
        public static var crtDateNotFound: InvalidParameter {
            InvalidParameter(.crtDateNotFound)
        }
        
        /// 证书内容不合法。
        public static var crtDateNotLegal: InvalidParameter {
            InvalidParameter(.crtDateNotLegal)
        }
        
        /// 证书过期。
        public static var crtDateOverdue: InvalidParameter {
            InvalidParameter(.crtDateOverdue)
        }
        
        /// 证书没有相关域名。
        public static var crtDomainNotFound: InvalidParameter {
            InvalidParameter(.crtDomainNotFound)
        }
        
        /// 证书 Key 不匹配。
        public static var crtKeyNotMatch: InvalidParameter {
            InvalidParameter(.crtKeyNotMatch)
        }
        
        /// 证书内容或者私钥未提供。
        public static var crtOrKeyNotExist: InvalidParameter {
            InvalidParameter(.crtOrKeyNotExist)
        }
        
        /// 域名已经存在。
        public static var domainAlreadyExist: InvalidParameter {
            InvalidParameter(.domainAlreadyExist)
        }
        
        /// 域名格式错误，请输入合法格式域名。
        public static var domainFormatError: InvalidParameter {
            InvalidParameter(.domainFormatError)
        }
        
        /// 当前域名在黑名单中。
        public static var domainHitBlackList: InvalidParameter {
            InvalidParameter(.domainHitBlackList)
        }
        
        /// 使用黑名单域名。
        public static var domainIsFamous: InvalidParameter {
            InvalidParameter(.domainIsFamous)
        }
        
        /// 域名受限，请提交工单，申请解除限制。
        public static var domainIsLimited: InvalidParameter {
            InvalidParameter(.domainIsLimited)
        }
        
        /// 域名长度超过限制。
        public static var domainTooLong: InvalidParameter {
            InvalidParameter(.domainTooLong)
        }
        
        public static var gopMustEqualAndExists: InvalidParameter {
            InvalidParameter(.gopMustEqualAndExists)
        }
        
        /// 输入数目超出限制。
        public static var inputNumLimitExceeded: InvalidParameter {
            InvalidParameter(.inputNumLimitExceeded)
        }
        
        /// 非法的背景长宽。
        public static var invalidBackgroudResolution: InvalidParameter {
            InvalidParameter(.invalidBackgroudResolution)
        }
        
        /// 非法的输出码率。
        public static var invalidBitrate: InvalidParameter {
            InvalidParameter(.invalidBitrate)
        }
        
        /// 回调地址不规范。
        public static var invalidCallbackUrl: InvalidParameter {
            InvalidParameter(.invalidCallbackUrl)
        }
        
        /// 裁剪区域溢出原始图片。
        public static var invalidCropParam: InvalidParameter {
            InvalidParameter(.invalidCropParam)
        }
        
        /// 图层参数错误。
        public static var invalidLayerParam: InvalidParameter {
            InvalidParameter(.invalidLayerParam)
        }
        
        /// 输出流 ID 被占用。
        public static var invalidOutputStreamID: InvalidParameter {
            InvalidParameter(.invalidOutputStreamID)
        }
        
        /// 非法输出类型，检查 OutputPram-StreamId 与 OutputType 是否匹配。
        public static var invalidOutputType: InvalidParameter {
            InvalidParameter(.invalidOutputType)
        }
        
        /// 水印 ID 未设置。
        public static var invalidPictureID: InvalidParameter {
            InvalidParameter(.invalidPictureID)
        }
        
        /// 非法的圆角矩形圆角半径。
        public static var invalidRoundRectRadius: InvalidParameter {
            InvalidParameter(.invalidRoundRectRadius)
        }
        
        /// 源地址不规范。
        public static var invalidSourceUrl: InvalidParameter {
            InvalidParameter(.invalidSourceUrl)
        }
        
        /// 任务时间超出限制。
        public static var invalidTaskTime: InvalidParameter {
            InvalidParameter(.invalidTaskTime)
        }
        
        /// 目标地址不规范。
        public static var invalidToUrl: InvalidParameter {
            InvalidParameter(.invalidToUrl)
        }
        
        /// 错误的VodFileName。
        public static var invalidVodFileName: InvalidParameter {
            InvalidParameter(.invalidVodFileName)
        }
        
        public static var invalidWatermark: InvalidParameter {
            InvalidParameter(.invalidWatermark)
        }
        
        /// 当月不允许添加已删除的小程序域名。
        public static var mpHostDelete: InvalidParameter {
            InvalidParameter(.mpHostDelete)
        }
        
        /// 小程序插件没有授权。
        public static var mpPluginNoUse: InvalidParameter {
            InvalidParameter(.mpPluginNoUse)
        }
        
        /// 其他错误。
        public static var otherError: InvalidParameter {
            InvalidParameter(.otherError)
        }
        
        /// 同一会话输出流发生变化。
        public static var sessionOutputStreamChanged: InvalidParameter {
            InvalidParameter(.sessionOutputStreamChanged)
        }
        
        /// 任务不存在。
        public static var taskNotExist: InvalidParameter {
            InvalidParameter(.taskNotExist)
        }
        
        /// 任务数超过限制。
        public static var taskNumMoreThanLimit: InvalidParameter {
            InvalidParameter(.taskNumMoreThanLimit)
        }
        
        /// 模板与输入流条数不匹配。
        public static var templateNotMatchInputNum: InvalidParameter {
            InvalidParameter(.templateNotMatchInputNum)
        }
        
        /// 外部地址无权限。
        public static var toUrlNoPermission: InvalidParameter {
            InvalidParameter(.toUrlNoPermission)
        }
        
        /// 域名解析不正确。
        public static var urlNotSafe: InvalidParameter {
            InvalidParameter(.urlNotSafe)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCLiveError.InvalidParameter: Equatable {
    public static func == (lhs: TCLiveError.InvalidParameter, rhs: TCLiveError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLiveError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLiveError.InvalidParameter {
    public func toLiveError() -> TCLiveError {
        guard let code = TCLiveError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCLiveError(code, context: self.context)
    }
}