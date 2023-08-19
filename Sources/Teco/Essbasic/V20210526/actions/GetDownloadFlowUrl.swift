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

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// GetDownloadFlowUrl请求参数结构体
    public struct GetDownloadFlowUrlRequest: TCRequest {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent

        /// 文件夹数组，签署流程总数不能超过50个，一个文件夹下，不能超过20个签署流程
        public let downLoadFlows: [DownloadFlowInfo]?

        /// 操作者的信息，不用传
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, downLoadFlows: [DownloadFlowInfo]? = nil) {
            self.agent = agent
            self.downLoadFlows = downLoadFlows
        }

        @available(*, deprecated, renamed: "init(agent:downLoadFlows:)", message: "'operator' is deprecated in 'GetDownloadFlowUrlRequest'. Setting this parameter has no effect.")
        public init(agent: Agent, downLoadFlows: [DownloadFlowInfo]? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.downLoadFlows = downLoadFlows
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case downLoadFlows = "DownLoadFlows"
            case `operator` = "Operator"
        }
    }

    /// GetDownloadFlowUrl返回参数结构体
    public struct GetDownloadFlowUrlResponse: TCResponse {
        /// 合同（流程）下载地址
        public let downLoadUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downLoadUrl = "DownLoadUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取合同（流程）批量下载链接
    ///
    /// 此接口（GetDownloadFlowUrl）用于创建电子签批量下载地址，让合作企业进入控制台直接下载，支持客户合同（流程）按照自定义文件夹形式 分类下载。
    /// 当前接口限制最多合同（流程）50个.
    /// 返回的链接只能使用一次
    @inlinable
    public func getDownloadFlowUrl(_ input: GetDownloadFlowUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDownloadFlowUrlResponse> {
        self.client.execute(action: "GetDownloadFlowUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取合同（流程）批量下载链接
    ///
    /// 此接口（GetDownloadFlowUrl）用于创建电子签批量下载地址，让合作企业进入控制台直接下载，支持客户合同（流程）按照自定义文件夹形式 分类下载。
    /// 当前接口限制最多合同（流程）50个.
    /// 返回的链接只能使用一次
    @inlinable
    public func getDownloadFlowUrl(_ input: GetDownloadFlowUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDownloadFlowUrlResponse {
        try await self.client.execute(action: "GetDownloadFlowUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取合同（流程）批量下载链接
    ///
    /// 此接口（GetDownloadFlowUrl）用于创建电子签批量下载地址，让合作企业进入控制台直接下载，支持客户合同（流程）按照自定义文件夹形式 分类下载。
    /// 当前接口限制最多合同（流程）50个.
    /// 返回的链接只能使用一次
    @inlinable
    public func getDownloadFlowUrl(agent: Agent, downLoadFlows: [DownloadFlowInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDownloadFlowUrlResponse> {
        self.getDownloadFlowUrl(.init(agent: agent, downLoadFlows: downLoadFlows), region: region, logger: logger, on: eventLoop)
    }

    /// 获取合同（流程）批量下载链接
    ///
    /// 此接口（GetDownloadFlowUrl）用于创建电子签批量下载地址，让合作企业进入控制台直接下载，支持客户合同（流程）按照自定义文件夹形式 分类下载。
    /// 当前接口限制最多合同（流程）50个.
    /// 返回的链接只能使用一次
    @available(*, deprecated, renamed: "getDownloadFlowUrl(agent:downLoadFlows:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func getDownloadFlowUrl(agent: Agent, downLoadFlows: [DownloadFlowInfo]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDownloadFlowUrlResponse> {
        self.getDownloadFlowUrl(.init(agent: agent, downLoadFlows: downLoadFlows, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取合同（流程）批量下载链接
    ///
    /// 此接口（GetDownloadFlowUrl）用于创建电子签批量下载地址，让合作企业进入控制台直接下载，支持客户合同（流程）按照自定义文件夹形式 分类下载。
    /// 当前接口限制最多合同（流程）50个.
    /// 返回的链接只能使用一次
    @inlinable
    public func getDownloadFlowUrl(agent: Agent, downLoadFlows: [DownloadFlowInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDownloadFlowUrlResponse {
        try await self.getDownloadFlowUrl(.init(agent: agent, downLoadFlows: downLoadFlows), region: region, logger: logger, on: eventLoop)
    }

    /// 获取合同（流程）批量下载链接
    ///
    /// 此接口（GetDownloadFlowUrl）用于创建电子签批量下载地址，让合作企业进入控制台直接下载，支持客户合同（流程）按照自定义文件夹形式 分类下载。
    /// 当前接口限制最多合同（流程）50个.
    /// 返回的链接只能使用一次
    @available(*, deprecated, renamed: "getDownloadFlowUrl(agent:downLoadFlows:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func getDownloadFlowUrl(agent: Agent, downLoadFlows: [DownloadFlowInfo]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDownloadFlowUrlResponse {
        try await self.getDownloadFlowUrl(.init(agent: agent, downLoadFlows: downLoadFlows, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
