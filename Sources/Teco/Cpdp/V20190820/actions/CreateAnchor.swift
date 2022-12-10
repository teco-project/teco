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

extension Cpdp {
    /// 直播平台-主播入驻
    ///
    /// 直播平台-主播入驻
    @inlinable
    public func createAnchor(_ input: CreateAnchorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAnchorResponse > {
        self.client.execute(action: "CreateAnchor", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 直播平台-主播入驻
    ///
    /// 直播平台-主播入驻
    @inlinable
    public func createAnchor(_ input: CreateAnchorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAnchorResponse {
        try await self.client.execute(action: "CreateAnchor", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAnchor请求参数结构体
    public struct CreateAnchorRequest: TCRequestModel {
        /// 主播业务ID，唯一
        public let anchorUid: String
        
        /// 主播姓名
        public let anchorName: String
        
        /// 主播电话
        /// _敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密
        public let anchorPhone: String
        
        /// 主播邮箱
        /// _敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密
        public let anchorEmail: String
        
        /// 主播地址
        /// _敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密
        public let anchorAddress: String
        
        /// 主播身份证号
        /// _敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密
        public let anchorIdNo: String
        
        /// 主播类型
        /// __KMusic__:全民K歌
        /// __QMusic__:QQ音乐
        /// __WeChat__:微信视频号
        public let anchorType: String
        
        /// 主播扩展信息
        public let anchorExtendInfo: [AnchorExtendInfo]?
        
        public init (anchorUid: String, anchorName: String, anchorPhone: String, anchorEmail: String, anchorAddress: String, anchorIdNo: String, anchorType: String, anchorExtendInfo: [AnchorExtendInfo]?) {
            self.anchorUid = anchorUid
            self.anchorName = anchorName
            self.anchorPhone = anchorPhone
            self.anchorEmail = anchorEmail
            self.anchorAddress = anchorAddress
            self.anchorIdNo = anchorIdNo
            self.anchorType = anchorType
            self.anchorExtendInfo = anchorExtendInfo
        }
        
        enum CodingKeys: String, CodingKey {
            case anchorUid = "AnchorUid"
            case anchorName = "AnchorName"
            case anchorPhone = "AnchorPhone"
            case anchorEmail = "AnchorEmail"
            case anchorAddress = "AnchorAddress"
            case anchorIdNo = "AnchorIdNo"
            case anchorType = "AnchorType"
            case anchorExtendInfo = "AnchorExtendInfo"
        }
    }
    
    /// CreateAnchor返回参数结构体
    public struct CreateAnchorResponse: TCResponseModel {
        /// 主播ID
        public let anchorId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case anchorId = "AnchorId"
            case requestId = "RequestId"
        }
    }
}