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

extension Gse {
    /// DescribeFleetRelatedResources请求参数结构体
    public struct DescribeFleetRelatedResourcesRequest: TCRequestModel {
        /// 服务器舰队 Id
        public let fleetId: String

        public init(fleetId: String) {
            self.fleetId = fleetId
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
        }
    }

    /// DescribeFleetRelatedResources返回参数结构体
    public struct DescribeFleetRelatedResourcesResponse: TCResponseModel {
        /// 与服务器舰队关联的资源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resources: [FleetRelatedResource]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resources = "Resources"
            case requestId = "RequestId"
        }
    }

    /// 获取与游戏服务器舰队关联的资源信息
    ///
    /// 本接口（DescribeFleetRelatedResources）用于获取与游戏服务器舰队关联的资源信息，如别名、队列
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetRelatedResources(_ input: DescribeFleetRelatedResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetRelatedResourcesResponse> {
        self.client.execute(action: "DescribeFleetRelatedResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取与游戏服务器舰队关联的资源信息
    ///
    /// 本接口（DescribeFleetRelatedResources）用于获取与游戏服务器舰队关联的资源信息，如别名、队列
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetRelatedResources(_ input: DescribeFleetRelatedResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetRelatedResourcesResponse {
        try await self.client.execute(action: "DescribeFleetRelatedResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取与游戏服务器舰队关联的资源信息
    ///
    /// 本接口（DescribeFleetRelatedResources）用于获取与游戏服务器舰队关联的资源信息，如别名、队列
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetRelatedResources(fleetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetRelatedResourcesResponse> {
        let input = DescribeFleetRelatedResourcesRequest(fleetId: fleetId)
        return self.client.execute(action: "DescribeFleetRelatedResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取与游戏服务器舰队关联的资源信息
    ///
    /// 本接口（DescribeFleetRelatedResources）用于获取与游戏服务器舰队关联的资源信息，如别名、队列
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetRelatedResources(fleetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetRelatedResourcesResponse {
        let input = DescribeFleetRelatedResourcesRequest(fleetId: fleetId)
        return try await self.client.execute(action: "DescribeFleetRelatedResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
