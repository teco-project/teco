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

extension Tcr {
    /// DescribeImageFilterPersonal请求参数结构体
    public struct DescribeImageFilterPersonalRequest: TCRequestModel {
        /// 仓库名称
        public let repoName: String

        /// Tag名
        public let tag: String

        public init(repoName: String, tag: String) {
            self.repoName = repoName
            self.tag = tag
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case tag = "Tag"
        }
    }

    /// DescribeImageFilterPersonal返回参数结构体
    public struct DescribeImageFilterPersonalResponse: TCResponseModel {
        /// 返回tag镜像内容相同的tag列表
        public let data: SameImagesResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询个人版中与指定tag镜像内容相同的tag列表
    ///
    /// 用于在个人版中查询与指定tag镜像内容相同的tag列表
    @inlinable
    public func describeImageFilterPersonal(_ input: DescribeImageFilterPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageFilterPersonalResponse> {
        self.client.execute(action: "DescribeImageFilterPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询个人版中与指定tag镜像内容相同的tag列表
    ///
    /// 用于在个人版中查询与指定tag镜像内容相同的tag列表
    @inlinable
    public func describeImageFilterPersonal(_ input: DescribeImageFilterPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageFilterPersonalResponse {
        try await self.client.execute(action: "DescribeImageFilterPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询个人版中与指定tag镜像内容相同的tag列表
    ///
    /// 用于在个人版中查询与指定tag镜像内容相同的tag列表
    @inlinable
    public func describeImageFilterPersonal(repoName: String, tag: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageFilterPersonalResponse> {
        self.describeImageFilterPersonal(.init(repoName: repoName, tag: tag), region: region, logger: logger, on: eventLoop)
    }

    /// 查询个人版中与指定tag镜像内容相同的tag列表
    ///
    /// 用于在个人版中查询与指定tag镜像内容相同的tag列表
    @inlinable
    public func describeImageFilterPersonal(repoName: String, tag: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageFilterPersonalResponse {
        try await self.describeImageFilterPersonal(.init(repoName: repoName, tag: tag), region: region, logger: logger, on: eventLoop)
    }
}
