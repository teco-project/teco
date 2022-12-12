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

@_exported import struct Foundation.Date

extension Cws {
    /// DescribeConfig请求参数结构体
    public struct DescribeConfigRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeConfig返回参数结构体
    public struct DescribeConfigResponse: TCResponseModel {
        /// 漏洞告警通知等级，4位分别代表：高危、中危、低危、提示。
        public let noticeLevel: String
        
        /// 配置ID。
        public let id: UInt64
        
        /// 记录创建时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let createdAt: Date
        
        /// 记录更新新建。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let updatedAt: Date
        
        /// 云用户appid。
        public let appid: UInt64
        
        /// 内容检测通知等级-1:通知,0-不通知
        public let contentLevel: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case noticeLevel = "NoticeLevel"
            case id = "Id"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case appid = "Appid"
            case contentLevel = "ContentLevel"
            case requestId = "RequestId"
        }
    }
    
    /// 查看用户配置列表
    ///
    /// 本接口 (DescribeConfig) 用于查询用户配置的详细信息。
    @inlinable
    public func describeConfig(_ input: DescribeConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeConfigResponse > {
        self.client.execute(action: "DescribeConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看用户配置列表
    ///
    /// 本接口 (DescribeConfig) 用于查询用户配置的详细信息。
    @inlinable
    public func describeConfig(_ input: DescribeConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigResponse {
        try await self.client.execute(action: "DescribeConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
