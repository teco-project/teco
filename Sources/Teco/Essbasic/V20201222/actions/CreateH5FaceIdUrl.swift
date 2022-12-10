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

extension Essbasic {
    /// 获取慧眼H5人脸核身Url
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼H5人脸核身Url
    @inlinable
    public func createH5FaceIdUrl(_ input: CreateH5FaceIdUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateH5FaceIdUrlResponse > {
        self.client.execute(action: "CreateH5FaceIdUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取慧眼H5人脸核身Url
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼H5人脸核身Url
    @inlinable
    public func createH5FaceIdUrl(_ input: CreateH5FaceIdUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateH5FaceIdUrlResponse {
        try await self.client.execute(action: "CreateH5FaceIdUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateH5FaceIdUrl请求参数结构体
    public struct CreateH5FaceIdUrlRequest: TCRequestModel {
        /// 调用方信息; 必选
        public let caller: Caller
        
        /// 慧眼业务ID; 不填写时后台使用Caller反查
        public let wbAppId: String?
        
        /// 姓名; 可选(未通过实名认证的用户必选)
        public let name: String?
        
        /// 用户证件类型; 可选; 默认ID_CARD:中国居民身份证
        public let idCardType: String?
        
        /// 用户证件号; 可选(未通过实名认证的用户必选)
        public let idCardNumber: String?
        
        /// H5人脸核身完成后回调的第三方Url; 可选; 不需要做Encode, 跳转的参数: ?code=XX&orderNo=XX&liveRate=xx, code=0表示成功,orderNo为订单号,liveRate为百分制活体检测得分
        public let jumpUrl: String?
        
        /// 参数值为"1":直接跳转到url回调地址; 可选; 其他值:跳转提供的结果页面
        public let jumpType: String?
        
        /// browser:表示在浏览器启动刷脸, app:表示在App里启动刷脸,默认值为browser; 可选
        public let openFrom: String?
        
        /// 跳转类型; 可选; 参数值为"1"时,刷脸页面使用replace方式跳转,不在浏览器history中留下记录;不传或其他值则正常跳转
        public let redirectType: String?
        
        public init (caller: Caller, wbAppId: String?, name: String?, idCardType: String?, idCardNumber: String?, jumpUrl: String?, jumpType: String?, openFrom: String?, redirectType: String?) {
            self.caller = caller
            self.wbAppId = wbAppId
            self.name = name
            self.idCardType = idCardType
            self.idCardNumber = idCardNumber
            self.jumpUrl = jumpUrl
            self.jumpType = jumpType
            self.openFrom = openFrom
            self.redirectType = redirectType
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case wbAppId = "WbAppId"
            case name = "Name"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
            case jumpUrl = "JumpUrl"
            case jumpType = "JumpType"
            case openFrom = "OpenFrom"
            case redirectType = "RedirectType"
        }
    }
    
    /// CreateH5FaceIdUrl返回参数结构体
    public struct CreateH5FaceIdUrlResponse: TCResponseModel {
        /// 跳转到人脸核身页面的链接
        public let url: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }
}