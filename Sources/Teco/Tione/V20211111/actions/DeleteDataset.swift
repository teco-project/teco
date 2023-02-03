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

extension Tione {
    /// DeleteDataset请求参数结构体
    public struct DeleteDatasetRequest: TCRequestModel {
        /// 数据集id
        public let datasetId: String

        /// 是否删除cos标签文件
        public let deleteLabelEnable: Bool

        public init(datasetId: String, deleteLabelEnable: Bool) {
            self.datasetId = datasetId
            self.deleteLabelEnable = deleteLabelEnable
        }

        enum CodingKeys: String, CodingKey {
            case datasetId = "DatasetId"
            case deleteLabelEnable = "DeleteLabelEnable"
        }
    }

    /// DeleteDataset返回参数结构体
    public struct DeleteDatasetResponse: TCResponseModel {
        /// 删除的datasetId
        public let datasetId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case datasetId = "DatasetId"
            case requestId = "RequestId"
        }
    }

    /// 删除数据集
    @inlinable
    public func deleteDataset(_ input: DeleteDatasetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatasetResponse> {
        self.client.execute(action: "DeleteDataset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除数据集
    @inlinable
    public func deleteDataset(_ input: DeleteDatasetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatasetResponse {
        try await self.client.execute(action: "DeleteDataset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除数据集
    @inlinable
    public func deleteDataset(datasetId: String, deleteLabelEnable: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatasetResponse> {
        let input = DeleteDatasetRequest(datasetId: datasetId, deleteLabelEnable: deleteLabelEnable)
        return self.client.execute(action: "DeleteDataset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除数据集
    @inlinable
    public func deleteDataset(datasetId: String, deleteLabelEnable: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatasetResponse {
        let input = DeleteDatasetRequest(datasetId: datasetId, deleteLabelEnable: deleteLabelEnable)
        return try await self.client.execute(action: "DeleteDataset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
