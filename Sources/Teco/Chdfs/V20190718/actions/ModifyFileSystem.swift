//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// ModifyFileSystem请求参数结构体
    public struct ModifyFileSystemRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        /// 文件系统名称
        public let fileSystemName: String?

        /// 文件系统描述
        public let description: String?

        /// 文件系统容量（byte），下限为1G，上限为1P，且必须是1G的整数倍
        /// 注意：修改的文件系统容量不能小于当前使用量
        public let capacityQuota: UInt64?

        public init(fileSystemId: String, fileSystemName: String? = nil, description: String? = nil, capacityQuota: UInt64? = nil) {
            self.fileSystemId = fileSystemId
            self.fileSystemName = fileSystemName
            self.description = description
            self.capacityQuota = capacityQuota
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case fileSystemName = "FileSystemName"
            case description = "Description"
            case capacityQuota = "CapacityQuota"
        }
    }

    /// ModifyFileSystem返回参数结构体
    public struct ModifyFileSystemResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改文件系统属性
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 修改文件系统属性，仅限于创建成功的文件系统。
    @inlinable
    public func modifyFileSystem(_ input: ModifyFileSystemRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyFileSystemResponse > {
        self.client.execute(action: "ModifyFileSystem", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改文件系统属性
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 修改文件系统属性，仅限于创建成功的文件系统。
    @inlinable
    public func modifyFileSystem(_ input: ModifyFileSystemRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFileSystemResponse {
        try await self.client.execute(action: "ModifyFileSystem", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改文件系统属性
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 修改文件系统属性，仅限于创建成功的文件系统。
    @inlinable
    public func modifyFileSystem(fileSystemId: String, fileSystemName: String? = nil, description: String? = nil, capacityQuota: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyFileSystemResponse > {
        self.modifyFileSystem(ModifyFileSystemRequest(fileSystemId: fileSystemId, fileSystemName: fileSystemName, description: description, capacityQuota: capacityQuota), logger: logger, on: eventLoop)
    }

    /// 修改文件系统属性
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 修改文件系统属性，仅限于创建成功的文件系统。
    @inlinable
    public func modifyFileSystem(fileSystemId: String, fileSystemName: String? = nil, description: String? = nil, capacityQuota: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFileSystemResponse {
        try await self.modifyFileSystem(ModifyFileSystemRequest(fileSystemId: fileSystemId, fileSystemName: fileSystemName, description: description, capacityQuota: capacityQuota), logger: logger, on: eventLoop)
    }
}
