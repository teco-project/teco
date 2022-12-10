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

extension Tms {
    /// 账号举报接口
    ///
    /// 举报恶意账号
    @inlinable
    public func accountTipoffAccess(_ input: AccountTipoffAccessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AccountTipoffAccessResponse > {
        self.client.execute(action: "AccountTipoffAccess", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 账号举报接口
    ///
    /// 举报恶意账号
    @inlinable
    public func accountTipoffAccess(_ input: AccountTipoffAccessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AccountTipoffAccessResponse {
        try await self.client.execute(action: "AccountTipoffAccess", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AccountTipoffAccess请求参数结构体
    public struct AccountTipoffAccessRequest: TCRequestModel {
        /// 被举报账号，长度低于 128 个字符
        public let reportedAccount: String
        
        /// 被举报账号类型(1-手机号 2-QQ号 3-微信号 4-QQ群号 5-微信openid 6-QQopenid 0-其它)
        public let reportedAccountType: Int64
        
        /// 被举报账号所属恶意类型(1-诈骗，2-骚扰，3-广告，4-违法违规，5-赌博传销，0-其他)
        public let evilType: Int64
        
        /// 举报者账号，长度低于 128 个字符
        public let senderAccount: String?
        
        /// 举报者账号类型(1-手机号 2-QQ号 3-微信号 4-QQ群号 5-微信openid 6-QQopenid 0-其它)
        public let senderAccountType: Int64?
        
        /// 举报者IP地址
        public let senderIP: String?
        
        /// 包含被举报账号的恶意内容（比如文本、图片链接，长度低于1024个字符）
        public let evilContent: String?
        
        public init (reportedAccount: String, reportedAccountType: Int64, evilType: Int64, senderAccount: String?, senderAccountType: Int64?, senderIP: String?, evilContent: String?) {
            self.reportedAccount = reportedAccount
            self.reportedAccountType = reportedAccountType
            self.evilType = evilType
            self.senderAccount = senderAccount
            self.senderAccountType = senderAccountType
            self.senderIP = senderIP
            self.evilContent = evilContent
        }
        
        enum CodingKeys: String, CodingKey {
            case reportedAccount = "ReportedAccount"
            case reportedAccountType = "ReportedAccountType"
            case evilType = "EvilType"
            case senderAccount = "SenderAccount"
            case senderAccountType = "SenderAccountType"
            case senderIP = "SenderIP"
            case evilContent = "EvilContent"
        }
    }
    
    /// AccountTipoffAccess返回参数结构体
    public struct AccountTipoffAccessResponse: TCResponseModel {
        /// 举报接口响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: TipoffResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}