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

import Logging
import NIOCore
import TecoCore

extension Tcss {
    /// CreateExportComplianceStatusListJob请求参数结构体
    public struct CreateExportComplianceStatusListJobRequest: TCRequest {
        /// 要导出信息的资产类型
        public let assetType: String

        /// 按照检测项导出，还是按照资产导出。true: 按照资产导出；false: 按照检测项导出。
        public let exportByAsset: Bool

        /// true, 全部导出；false, 根据IdList来导出数据。
        public let exportAll: Bool

        /// 要导出的资产ID列表或检测项ID列表，由ExportByAsset的取值决定。
        public let idList: [UInt64]?

        public init(assetType: String, exportByAsset: Bool, exportAll: Bool, idList: [UInt64]? = nil) {
            self.assetType = assetType
            self.exportByAsset = exportByAsset
            self.exportAll = exportAll
            self.idList = idList
        }

        enum CodingKeys: String, CodingKey {
            case assetType = "AssetType"
            case exportByAsset = "ExportByAsset"
            case exportAll = "ExportAll"
            case idList = "IdList"
        }
    }

    /// CreateExportComplianceStatusListJob返回参数结构体
    public struct CreateExportComplianceStatusListJobResponse: TCResponse {
        /// 返回创建的导出任务的ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建一个导出安全合规信息的任务
    @inlinable
    public func createExportComplianceStatusListJob(_ input: CreateExportComplianceStatusListJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExportComplianceStatusListJobResponse> {
        self.client.execute(action: "CreateExportComplianceStatusListJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建一个导出安全合规信息的任务
    @inlinable
    public func createExportComplianceStatusListJob(_ input: CreateExportComplianceStatusListJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExportComplianceStatusListJobResponse {
        try await self.client.execute(action: "CreateExportComplianceStatusListJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建一个导出安全合规信息的任务
    @inlinable
    public func createExportComplianceStatusListJob(assetType: String, exportByAsset: Bool, exportAll: Bool, idList: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExportComplianceStatusListJobResponse> {
        self.createExportComplianceStatusListJob(.init(assetType: assetType, exportByAsset: exportByAsset, exportAll: exportAll, idList: idList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建一个导出安全合规信息的任务
    @inlinable
    public func createExportComplianceStatusListJob(assetType: String, exportByAsset: Bool, exportAll: Bool, idList: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExportComplianceStatusListJobResponse {
        try await self.createExportComplianceStatusListJob(.init(assetType: assetType, exportByAsset: exportByAsset, exportAll: exportAll, idList: idList), region: region, logger: logger, on: eventLoop)
    }
}
