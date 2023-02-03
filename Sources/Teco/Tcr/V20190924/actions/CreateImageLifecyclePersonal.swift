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

extension Tcr {
    /// CreateImageLifecyclePersonal请求参数结构体
    public struct CreateImageLifecyclePersonalRequest: TCRequestModel {
        /// 仓库名称
        public let repoName: String

        /// keep_last_days:保留最近几天的数据;keep_last_nums:保留最近多少个
        public let type: String

        /// 策略值
        public let val: Int64

        public init(repoName: String, type: String, val: Int64) {
            self.repoName = repoName
            self.type = type
            self.val = val
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case type = "Type"
            case val = "Val"
        }
    }

    /// CreateImageLifecyclePersonal返回参数结构体
    public struct CreateImageLifecyclePersonalResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建个人版镜像版本清理策略
    ///
    /// 用于在个人版中创建清理策略
    @inlinable @discardableResult
    public func createImageLifecyclePersonal(_ input: CreateImageLifecyclePersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageLifecyclePersonalResponse> {
        self.client.execute(action: "CreateImageLifecyclePersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建个人版镜像版本清理策略
    ///
    /// 用于在个人版中创建清理策略
    @inlinable @discardableResult
    public func createImageLifecyclePersonal(_ input: CreateImageLifecyclePersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageLifecyclePersonalResponse {
        try await self.client.execute(action: "CreateImageLifecyclePersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建个人版镜像版本清理策略
    ///
    /// 用于在个人版中创建清理策略
    @inlinable @discardableResult
    public func createImageLifecyclePersonal(repoName: String, type: String, val: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageLifecyclePersonalResponse> {
        let input = CreateImageLifecyclePersonalRequest(repoName: repoName, type: type, val: val)
        return self.client.execute(action: "CreateImageLifecyclePersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建个人版镜像版本清理策略
    ///
    /// 用于在个人版中创建清理策略
    @inlinable @discardableResult
    public func createImageLifecyclePersonal(repoName: String, type: String, val: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageLifecyclePersonalResponse {
        let input = CreateImageLifecyclePersonalRequest(repoName: repoName, type: type, val: val)
        return try await self.client.execute(action: "CreateImageLifecyclePersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
