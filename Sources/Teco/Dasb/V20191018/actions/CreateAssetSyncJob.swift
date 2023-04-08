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

extension Dasb {
    /// CreateAssetSyncJob请求参数结构体
    public struct CreateAssetSyncJobRequest: TCRequestModel {
        /// 同步资产类别，1 - 主机资产, 2 - 数据库资产
        public let category: UInt64

        public init(category: UInt64) {
            self.category = category
        }

        enum CodingKeys: String, CodingKey {
            case category = "Category"
        }
    }

    /// CreateAssetSyncJob返回参数结构体
    public struct CreateAssetSyncJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建手工资产同步任务
    @inlinable @discardableResult
    public func createAssetSyncJob(_ input: CreateAssetSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetSyncJobResponse> {
        self.client.execute(action: "CreateAssetSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建手工资产同步任务
    @inlinable @discardableResult
    public func createAssetSyncJob(_ input: CreateAssetSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetSyncJobResponse {
        try await self.client.execute(action: "CreateAssetSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建手工资产同步任务
    @inlinable @discardableResult
    public func createAssetSyncJob(category: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetSyncJobResponse> {
        self.createAssetSyncJob(.init(category: category), region: region, logger: logger, on: eventLoop)
    }

    /// 创建手工资产同步任务
    @inlinable @discardableResult
    public func createAssetSyncJob(category: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetSyncJobResponse {
        try await self.createAssetSyncJob(.init(category: category), region: region, logger: logger, on: eventLoop)
    }
}