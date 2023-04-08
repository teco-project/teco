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

extension Tsf {
    /// UpdateGatewayApi请求参数结构体
    public struct UpdateGatewayApiRequest: TCRequestModel {
        /// API ID
        public let apiId: String

        /// API 路径
        public let path: String?

        /// Api 请求方法
        public let method: String?

        /// 请求映射
        public let pathMapping: String?

        /// api所在服务host
        public let host: String?

        /// api描述信息
        public let description: String?

        public init(apiId: String, path: String? = nil, method: String? = nil, pathMapping: String? = nil, host: String? = nil, description: String? = nil) {
            self.apiId = apiId
            self.path = path
            self.method = method
            self.pathMapping = pathMapping
            self.host = host
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case apiId = "ApiId"
            case path = "Path"
            case method = "Method"
            case pathMapping = "PathMapping"
            case host = "Host"
            case description = "Description"
        }
    }

    /// UpdateGatewayApi返回参数结构体
    public struct UpdateGatewayApiResponse: TCResponseModel {
        /// 返回结果，成功失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新API
    @inlinable
    public func updateGatewayApi(_ input: UpdateGatewayApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGatewayApiResponse> {
        self.client.execute(action: "UpdateGatewayApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新API
    @inlinable
    public func updateGatewayApi(_ input: UpdateGatewayApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGatewayApiResponse {
        try await self.client.execute(action: "UpdateGatewayApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新API
    @inlinable
    public func updateGatewayApi(apiId: String, path: String? = nil, method: String? = nil, pathMapping: String? = nil, host: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGatewayApiResponse> {
        self.updateGatewayApi(.init(apiId: apiId, path: path, method: method, pathMapping: pathMapping, host: host, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新API
    @inlinable
    public func updateGatewayApi(apiId: String, path: String? = nil, method: String? = nil, pathMapping: String? = nil, host: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGatewayApiResponse {
        try await self.updateGatewayApi(.init(apiId: apiId, path: path, method: method, pathMapping: pathMapping, host: host, description: description), region: region, logger: logger, on: eventLoop)
    }
}
