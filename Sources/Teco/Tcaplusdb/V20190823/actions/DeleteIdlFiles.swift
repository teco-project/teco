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

extension Tcaplusdb {
    /// DeleteIdlFiles请求参数结构体
    public struct DeleteIdlFilesRequest: TCRequestModel {
        /// IDL所属集群ID
        public let clusterId: String

        /// 待删除的IDL文件信息列表
        public let idlFiles: [IdlFileInfo]

        public init(clusterId: String, idlFiles: [IdlFileInfo]) {
            self.clusterId = clusterId
            self.idlFiles = idlFiles
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case idlFiles = "IdlFiles"
        }
    }

    /// DeleteIdlFiles返回参数结构体
    public struct DeleteIdlFilesResponse: TCResponseModel {
        /// 结果记录数量
        public let totalCount: UInt64

        /// 删除结果
        public let idlFileInfos: [IdlFileInfoWithoutContent]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case idlFileInfos = "IdlFileInfos"
            case requestId = "RequestId"
        }
    }

    /// 删除IDL描述文件
    ///
    /// 指定集群ID和待删除IDL文件的信息，删除目标文件，如果文件正在被表关联则删除失败。
    @inlinable
    public func deleteIdlFiles(_ input: DeleteIdlFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIdlFilesResponse> {
        self.client.execute(action: "DeleteIdlFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除IDL描述文件
    ///
    /// 指定集群ID和待删除IDL文件的信息，删除目标文件，如果文件正在被表关联则删除失败。
    @inlinable
    public func deleteIdlFiles(_ input: DeleteIdlFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIdlFilesResponse {
        try await self.client.execute(action: "DeleteIdlFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除IDL描述文件
    ///
    /// 指定集群ID和待删除IDL文件的信息，删除目标文件，如果文件正在被表关联则删除失败。
    @inlinable
    public func deleteIdlFiles(clusterId: String, idlFiles: [IdlFileInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIdlFilesResponse> {
        let input = DeleteIdlFilesRequest(clusterId: clusterId, idlFiles: idlFiles)
        return self.client.execute(action: "DeleteIdlFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除IDL描述文件
    ///
    /// 指定集群ID和待删除IDL文件的信息，删除目标文件，如果文件正在被表关联则删除失败。
    @inlinable
    public func deleteIdlFiles(clusterId: String, idlFiles: [IdlFileInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIdlFilesResponse {
        let input = DeleteIdlFilesRequest(clusterId: clusterId, idlFiles: idlFiles)
        return try await self.client.execute(action: "DeleteIdlFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
