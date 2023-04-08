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

extension Dlc {
    /// UnlockMetaData请求参数结构体
    public struct UnlockMetaDataRequest: TCRequestModel {
        /// 锁ID
        public let lockId: Int64

        /// 数据源名称
        public let datasourceConnectionName: String?

        public init(lockId: Int64, datasourceConnectionName: String? = nil) {
            self.lockId = lockId
            self.datasourceConnectionName = datasourceConnectionName
        }

        enum CodingKeys: String, CodingKey {
            case lockId = "LockId"
            case datasourceConnectionName = "DatasourceConnectionName"
        }
    }

    /// UnlockMetaData返回参数结构体
    public struct UnlockMetaDataResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 元数据解锁
    @inlinable @discardableResult
    public func unlockMetaData(_ input: UnlockMetaDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlockMetaDataResponse> {
        self.client.execute(action: "UnlockMetaData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 元数据解锁
    @inlinable @discardableResult
    public func unlockMetaData(_ input: UnlockMetaDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlockMetaDataResponse {
        try await self.client.execute(action: "UnlockMetaData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 元数据解锁
    @inlinable @discardableResult
    public func unlockMetaData(lockId: Int64, datasourceConnectionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlockMetaDataResponse> {
        self.unlockMetaData(.init(lockId: lockId, datasourceConnectionName: datasourceConnectionName), region: region, logger: logger, on: eventLoop)
    }

    /// 元数据解锁
    @inlinable @discardableResult
    public func unlockMetaData(lockId: Int64, datasourceConnectionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlockMetaDataResponse {
        try await self.unlockMetaData(.init(lockId: lockId, datasourceConnectionName: datasourceConnectionName), region: region, logger: logger, on: eventLoop)
    }
}
