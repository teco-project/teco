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

extension Iotexplorer {
    /// DeletePositionSpace请求参数结构体
    public struct DeletePositionSpaceRequest: TCRequestModel {
        /// 位置空间Id
        public let spaceId: String

        public init(spaceId: String) {
            self.spaceId = spaceId
        }

        enum CodingKeys: String, CodingKey {
            case spaceId = "SpaceId"
        }
    }

    /// DeletePositionSpace返回参数结构体
    public struct DeletePositionSpaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除位置空间
    @inlinable @discardableResult
    public func deletePositionSpace(_ input: DeletePositionSpaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePositionSpaceResponse> {
        self.client.execute(action: "DeletePositionSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除位置空间
    @inlinable @discardableResult
    public func deletePositionSpace(_ input: DeletePositionSpaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePositionSpaceResponse {
        try await self.client.execute(action: "DeletePositionSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除位置空间
    @inlinable @discardableResult
    public func deletePositionSpace(spaceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePositionSpaceResponse> {
        self.deletePositionSpace(DeletePositionSpaceRequest(spaceId: spaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除位置空间
    @inlinable @discardableResult
    public func deletePositionSpace(spaceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePositionSpaceResponse {
        try await self.deletePositionSpace(DeletePositionSpaceRequest(spaceId: spaceId), region: region, logger: logger, on: eventLoop)
    }
}
