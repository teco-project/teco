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
    /// CreateFenceBind请求参数结构体
    public struct CreateFenceBindRequest: TCRequestModel {
        /// 围栏Id
        public let fenceId: Int64

        /// 围栏绑定的产品列表
        public let items: [FenceBindProductItem]

        public init(fenceId: Int64, items: [FenceBindProductItem]) {
            self.fenceId = fenceId
            self.items = items
        }

        enum CodingKeys: String, CodingKey {
            case fenceId = "FenceId"
            case items = "Items"
        }
    }

    /// CreateFenceBind返回参数结构体
    public struct CreateFenceBindResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建围栏绑定信息
    @inlinable @discardableResult
    public func createFenceBind(_ input: CreateFenceBindRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFenceBindResponse> {
        self.client.execute(action: "CreateFenceBind", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建围栏绑定信息
    @inlinable @discardableResult
    public func createFenceBind(_ input: CreateFenceBindRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFenceBindResponse {
        try await self.client.execute(action: "CreateFenceBind", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建围栏绑定信息
    @inlinable @discardableResult
    public func createFenceBind(fenceId: Int64, items: [FenceBindProductItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFenceBindResponse> {
        let input = CreateFenceBindRequest(fenceId: fenceId, items: items)
        return self.client.execute(action: "CreateFenceBind", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建围栏绑定信息
    @inlinable @discardableResult
    public func createFenceBind(fenceId: Int64, items: [FenceBindProductItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFenceBindResponse {
        let input = CreateFenceBindRequest(fenceId: fenceId, items: items)
        return try await self.client.execute(action: "CreateFenceBind", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
