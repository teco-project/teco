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

extension Solar {
    /// DescribeResourceTemplateHeaders请求参数结构体
    public struct DescribeResourceTemplateHeadersRequest: TCRequestModel {
        /// 微信公众号appId
        public let wxAppId: String?

        public init(wxAppId: String? = nil) {
            self.wxAppId = wxAppId
        }

        enum CodingKeys: String, CodingKey {
            case wxAppId = "WxAppId"
        }
    }

    /// DescribeResourceTemplateHeaders返回参数结构体
    public struct DescribeResourceTemplateHeadersResponse: TCResponseModel {
        /// 记录条数
        public let totalCount: UInt64

        /// 模板列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tmplList: [ResourceTemplateHeader]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tmplList = "TmplList"
            case requestId = "RequestId"
        }
    }

    /// 素材查询服务号模板标题的列表
    ///
    /// 素材查询服务号模板的列表（样例）
    @inlinable
    public func describeResourceTemplateHeaders(_ input: DescribeResourceTemplateHeadersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTemplateHeadersResponse> {
        self.client.execute(action: "DescribeResourceTemplateHeaders", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 素材查询服务号模板标题的列表
    ///
    /// 素材查询服务号模板的列表（样例）
    @inlinable
    public func describeResourceTemplateHeaders(_ input: DescribeResourceTemplateHeadersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTemplateHeadersResponse {
        try await self.client.execute(action: "DescribeResourceTemplateHeaders", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 素材查询服务号模板标题的列表
    ///
    /// 素材查询服务号模板的列表（样例）
    @inlinable
    public func describeResourceTemplateHeaders(wxAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTemplateHeadersResponse> {
        self.describeResourceTemplateHeaders(.init(wxAppId: wxAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 素材查询服务号模板标题的列表
    ///
    /// 素材查询服务号模板的列表（样例）
    @inlinable
    public func describeResourceTemplateHeaders(wxAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTemplateHeadersResponse {
        try await self.describeResourceTemplateHeaders(.init(wxAppId: wxAppId), region: region, logger: logger, on: eventLoop)
    }
}
