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

extension Tcb {
    /// CreateStaticStore请求参数结构体
    public struct CreateStaticStoreRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 是否启用统一域名
        public let enableUnion: Bool?

        public init(envId: String, enableUnion: Bool? = nil) {
            self.envId = envId
            self.enableUnion = enableUnion
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case enableUnion = "EnableUnion"
        }
    }

    /// CreateStaticStore返回参数结构体
    public struct CreateStaticStoreResponse: TCResponseModel {
        /// 创建静态资源结果(succ/fail)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建静态托管资源
    ///
    /// 创建静态托管资源，包括COS和CDN，异步任务创建，查看创建结果需要根据DescribeStaticStore接口来查看
    @inlinable
    public func createStaticStore(_ input: CreateStaticStoreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStaticStoreResponse> {
        self.client.execute(action: "CreateStaticStore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建静态托管资源
    ///
    /// 创建静态托管资源，包括COS和CDN，异步任务创建，查看创建结果需要根据DescribeStaticStore接口来查看
    @inlinable
    public func createStaticStore(_ input: CreateStaticStoreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStaticStoreResponse {
        try await self.client.execute(action: "CreateStaticStore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建静态托管资源
    ///
    /// 创建静态托管资源，包括COS和CDN，异步任务创建，查看创建结果需要根据DescribeStaticStore接口来查看
    @inlinable
    public func createStaticStore(envId: String, enableUnion: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStaticStoreResponse> {
        self.createStaticStore(CreateStaticStoreRequest(envId: envId, enableUnion: enableUnion), region: region, logger: logger, on: eventLoop)
    }

    /// 创建静态托管资源
    ///
    /// 创建静态托管资源，包括COS和CDN，异步任务创建，查看创建结果需要根据DescribeStaticStore接口来查看
    @inlinable
    public func createStaticStore(envId: String, enableUnion: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStaticStoreResponse {
        try await self.createStaticStore(CreateStaticStoreRequest(envId: envId, enableUnion: enableUnion), region: region, logger: logger, on: eventLoop)
    }
}
