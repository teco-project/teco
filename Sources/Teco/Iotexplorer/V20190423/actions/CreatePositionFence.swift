//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iotexplorer {
    /// CreatePositionFence请求参数结构体
    public struct CreatePositionFenceRequest: TCRequestModel {
        /// 位置空间Id
        public let spaceId: String

        /// 围栏名称
        public let fenceName: String

        /// 围栏区域信息，采用 GeoJSON 格式
        public let fenceArea: String

        /// 围栏描述
        public let fenceDesc: String?

        public init(spaceId: String, fenceName: String, fenceArea: String, fenceDesc: String? = nil) {
            self.spaceId = spaceId
            self.fenceName = fenceName
            self.fenceArea = fenceArea
            self.fenceDesc = fenceDesc
        }

        enum CodingKeys: String, CodingKey {
            case spaceId = "SpaceId"
            case fenceName = "FenceName"
            case fenceArea = "FenceArea"
            case fenceDesc = "FenceDesc"
        }
    }

    /// CreatePositionFence返回参数结构体
    public struct CreatePositionFenceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建围栏
    @inlinable @discardableResult
    public func createPositionFence(_ input: CreatePositionFenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePositionFenceResponse> {
        self.client.execute(action: "CreatePositionFence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建围栏
    @inlinable @discardableResult
    public func createPositionFence(_ input: CreatePositionFenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePositionFenceResponse {
        try await self.client.execute(action: "CreatePositionFence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建围栏
    @inlinable @discardableResult
    public func createPositionFence(spaceId: String, fenceName: String, fenceArea: String, fenceDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePositionFenceResponse> {
        self.createPositionFence(CreatePositionFenceRequest(spaceId: spaceId, fenceName: fenceName, fenceArea: fenceArea, fenceDesc: fenceDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 创建围栏
    @inlinable @discardableResult
    public func createPositionFence(spaceId: String, fenceName: String, fenceArea: String, fenceDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePositionFenceResponse {
        try await self.createPositionFence(CreatePositionFenceRequest(spaceId: spaceId, fenceName: fenceName, fenceArea: fenceArea, fenceDesc: fenceDesc), region: region, logger: logger, on: eventLoop)
    }
}
