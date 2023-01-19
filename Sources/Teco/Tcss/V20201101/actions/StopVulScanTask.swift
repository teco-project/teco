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

extension Tcss {
    /// StopVulScanTask请求参数结构体
    public struct StopVulScanTaskRequest: TCRequestModel {
        /// 本地镜像漏洞扫描任务ID
        public let localTaskID: Int64?

        /// 本地镜像ID，无则全部
        public let localImageIDs: [String]?

        /// 仓库镜像ID，无则全部
        public let registryImageIDs: [UInt64]?

        /// 仓库镜像漏洞扫描任务ID
        public let registryTaskID: Int64?

        public init(localTaskID: Int64? = nil, localImageIDs: [String]? = nil, registryImageIDs: [UInt64]? = nil, registryTaskID: Int64? = nil) {
            self.localTaskID = localTaskID
            self.localImageIDs = localImageIDs
            self.registryImageIDs = registryImageIDs
            self.registryTaskID = registryTaskID
        }

        enum CodingKeys: String, CodingKey {
            case localTaskID = "LocalTaskID"
            case localImageIDs = "LocalImageIDs"
            case registryImageIDs = "RegistryImageIDs"
            case registryTaskID = "RegistryTaskID"
        }
    }

    /// StopVulScanTask返回参数结构体
    public struct StopVulScanTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止漏洞扫描任务
    @inlinable
    public func stopVulScanTask(_ input: StopVulScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopVulScanTaskResponse> {
        self.client.execute(action: "StopVulScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止漏洞扫描任务
    @inlinable
    public func stopVulScanTask(_ input: StopVulScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopVulScanTaskResponse {
        try await self.client.execute(action: "StopVulScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止漏洞扫描任务
    @inlinable
    public func stopVulScanTask(localTaskID: Int64? = nil, localImageIDs: [String]? = nil, registryImageIDs: [UInt64]? = nil, registryTaskID: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopVulScanTaskResponse> {
        self.stopVulScanTask(StopVulScanTaskRequest(localTaskID: localTaskID, localImageIDs: localImageIDs, registryImageIDs: registryImageIDs, registryTaskID: registryTaskID), region: region, logger: logger, on: eventLoop)
    }

    /// 停止漏洞扫描任务
    @inlinable
    public func stopVulScanTask(localTaskID: Int64? = nil, localImageIDs: [String]? = nil, registryImageIDs: [UInt64]? = nil, registryTaskID: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopVulScanTaskResponse {
        try await self.stopVulScanTask(StopVulScanTaskRequest(localTaskID: localTaskID, localImageIDs: localImageIDs, registryImageIDs: registryImageIDs, registryTaskID: registryTaskID), region: region, logger: logger, on: eventLoop)
    }
}
