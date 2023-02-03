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

extension Cfs {
    /// DescribeCfsFileSystemClients请求参数结构体
    public struct DescribeCfsFileSystemClientsRequest: TCRequestModel {
        /// 文件系统 ID。
        public let fileSystemId: String

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }

    /// DescribeCfsFileSystemClients返回参数结构体
    public struct DescribeCfsFileSystemClientsResponse: TCResponseModel {
        /// 客户端列表
        public let clientList: [FileSystemClient]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clientList = "ClientList"
            case requestId = "RequestId"
        }
    }

    /// 查询文件系统客户端
    ///
    /// 查询挂载该文件系统的客户端。此功能需要客户端安装CFS监控插件。
    @inlinable
    public func describeCfsFileSystemClients(_ input: DescribeCfsFileSystemClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsFileSystemClientsResponse> {
        self.client.execute(action: "DescribeCfsFileSystemClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件系统客户端
    ///
    /// 查询挂载该文件系统的客户端。此功能需要客户端安装CFS监控插件。
    @inlinable
    public func describeCfsFileSystemClients(_ input: DescribeCfsFileSystemClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsFileSystemClientsResponse {
        try await self.client.execute(action: "DescribeCfsFileSystemClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件系统客户端
    ///
    /// 查询挂载该文件系统的客户端。此功能需要客户端安装CFS监控插件。
    @inlinable
    public func describeCfsFileSystemClients(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsFileSystemClientsResponse> {
        let input = DescribeCfsFileSystemClientsRequest(fileSystemId: fileSystemId)
        return self.client.execute(action: "DescribeCfsFileSystemClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件系统客户端
    ///
    /// 查询挂载该文件系统的客户端。此功能需要客户端安装CFS监控插件。
    @inlinable
    public func describeCfsFileSystemClients(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsFileSystemClientsResponse {
        let input = DescribeCfsFileSystemClientsRequest(fileSystemId: fileSystemId)
        return try await self.client.execute(action: "DescribeCfsFileSystemClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
