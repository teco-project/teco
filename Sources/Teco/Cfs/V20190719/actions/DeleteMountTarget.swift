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
    /// DeleteMountTarget请求参数结构体
    public struct DeleteMountTargetRequest: TCRequestModel {
        /// 文件系统 ID
        public let fileSystemId: String

        /// 挂载点 ID
        public let mountTargetId: String

        public init(fileSystemId: String, mountTargetId: String) {
            self.fileSystemId = fileSystemId
            self.mountTargetId = mountTargetId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case mountTargetId = "MountTargetId"
        }
    }

    /// DeleteMountTarget返回参数结构体
    public struct DeleteMountTargetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除挂载点
    ///
    /// 本接口（DeleteMountTarget）用于删除挂载点
    @inlinable @discardableResult
    public func deleteMountTarget(_ input: DeleteMountTargetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMountTargetResponse> {
        self.client.execute(action: "DeleteMountTarget", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除挂载点
    ///
    /// 本接口（DeleteMountTarget）用于删除挂载点
    @inlinable @discardableResult
    public func deleteMountTarget(_ input: DeleteMountTargetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMountTargetResponse {
        try await self.client.execute(action: "DeleteMountTarget", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除挂载点
    ///
    /// 本接口（DeleteMountTarget）用于删除挂载点
    @inlinable @discardableResult
    public func deleteMountTarget(fileSystemId: String, mountTargetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMountTargetResponse> {
        self.deleteMountTarget(.init(fileSystemId: fileSystemId, mountTargetId: mountTargetId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除挂载点
    ///
    /// 本接口（DeleteMountTarget）用于删除挂载点
    @inlinable @discardableResult
    public func deleteMountTarget(fileSystemId: String, mountTargetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMountTargetResponse {
        try await self.deleteMountTarget(.init(fileSystemId: fileSystemId, mountTargetId: mountTargetId), region: region, logger: logger, on: eventLoop)
    }
}
