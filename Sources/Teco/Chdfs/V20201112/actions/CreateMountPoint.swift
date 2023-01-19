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

extension Chdfs {
    /// CreateMountPoint请求参数结构体
    public struct CreateMountPointRequest: TCRequestModel {
        /// 挂载点名称
        public let mountPointName: String

        /// 文件系统ID
        public let fileSystemId: String

        /// 挂载点状态（1：打开；2：关闭）
        public let mountPointStatus: UInt64

        public init(mountPointName: String, fileSystemId: String, mountPointStatus: UInt64) {
            self.mountPointName = mountPointName
            self.fileSystemId = fileSystemId
            self.mountPointStatus = mountPointStatus
        }

        enum CodingKeys: String, CodingKey {
            case mountPointName = "MountPointName"
            case fileSystemId = "FileSystemId"
            case mountPointStatus = "MountPointStatus"
        }
    }

    /// CreateMountPoint返回参数结构体
    public struct CreateMountPointResponse: TCResponseModel {
        /// 挂载点
        public let mountPoint: MountPoint

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mountPoint = "MountPoint"
            case requestId = "RequestId"
        }
    }

    /// 创建挂载点
    ///
    /// 创建文件系统挂载点，仅限于创建成功的文件系统。
    @inlinable
    public func createMountPoint(_ input: CreateMountPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMountPointResponse> {
        self.client.execute(action: "CreateMountPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建挂载点
    ///
    /// 创建文件系统挂载点，仅限于创建成功的文件系统。
    @inlinable
    public func createMountPoint(_ input: CreateMountPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMountPointResponse {
        try await self.client.execute(action: "CreateMountPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建挂载点
    ///
    /// 创建文件系统挂载点，仅限于创建成功的文件系统。
    @inlinable
    public func createMountPoint(mountPointName: String, fileSystemId: String, mountPointStatus: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMountPointResponse> {
        self.createMountPoint(CreateMountPointRequest(mountPointName: mountPointName, fileSystemId: fileSystemId, mountPointStatus: mountPointStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 创建挂载点
    ///
    /// 创建文件系统挂载点，仅限于创建成功的文件系统。
    @inlinable
    public func createMountPoint(mountPointName: String, fileSystemId: String, mountPointStatus: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMountPointResponse {
        try await self.createMountPoint(CreateMountPointRequest(mountPointName: mountPointName, fileSystemId: fileSystemId, mountPointStatus: mountPointStatus), region: region, logger: logger, on: eventLoop)
    }
}
