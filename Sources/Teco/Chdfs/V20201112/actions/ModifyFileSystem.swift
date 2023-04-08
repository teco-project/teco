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

extension Chdfs {
    /// ModifyFileSystem请求参数结构体
    public struct ModifyFileSystemRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        /// 文件系统名称
        public let fileSystemName: String?

        /// 文件系统描述
        public let description: String?

        /// 文件系统容量（byte），下限为1GB，上限为1PB，且必须是1GB的整数倍
        /// 注意：修改的文件系统容量不能小于当前使用量
        public let capacityQuota: UInt64?

        /// 超级用户名列表，可以为空数组
        public let superUsers: [String]?

        /// 是否校验POSIX ACL
        public let posixAcl: Bool?

        /// 是否打开Ranger地址校验
        public let enableRanger: Bool?

        /// Ranger地址列表，可以为空数组
        public let rangerServiceAddresses: [String]?

        public init(fileSystemId: String, fileSystemName: String? = nil, description: String? = nil, capacityQuota: UInt64? = nil, superUsers: [String]? = nil, posixAcl: Bool? = nil, enableRanger: Bool? = nil, rangerServiceAddresses: [String]? = nil) {
            self.fileSystemId = fileSystemId
            self.fileSystemName = fileSystemName
            self.description = description
            self.capacityQuota = capacityQuota
            self.superUsers = superUsers
            self.posixAcl = posixAcl
            self.enableRanger = enableRanger
            self.rangerServiceAddresses = rangerServiceAddresses
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case fileSystemName = "FileSystemName"
            case description = "Description"
            case capacityQuota = "CapacityQuota"
            case superUsers = "SuperUsers"
            case posixAcl = "PosixAcl"
            case enableRanger = "EnableRanger"
            case rangerServiceAddresses = "RangerServiceAddresses"
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
    /// 修改文件系统属性，仅限于创建成功的文件系统。
    @inlinable @discardableResult
    public func modifyFileSystem(_ input: ModifyFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFileSystemResponse> {
        self.client.execute(action: "ModifyFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改文件系统属性
    ///
    /// 修改文件系统属性，仅限于创建成功的文件系统。
    @inlinable @discardableResult
    public func modifyFileSystem(_ input: ModifyFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFileSystemResponse {
        try await self.client.execute(action: "ModifyFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改文件系统属性
    ///
    /// 修改文件系统属性，仅限于创建成功的文件系统。
    @inlinable @discardableResult
    public func modifyFileSystem(fileSystemId: String, fileSystemName: String? = nil, description: String? = nil, capacityQuota: UInt64? = nil, superUsers: [String]? = nil, posixAcl: Bool? = nil, enableRanger: Bool? = nil, rangerServiceAddresses: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFileSystemResponse> {
        self.modifyFileSystem(.init(fileSystemId: fileSystemId, fileSystemName: fileSystemName, description: description, capacityQuota: capacityQuota, superUsers: superUsers, posixAcl: posixAcl, enableRanger: enableRanger, rangerServiceAddresses: rangerServiceAddresses), region: region, logger: logger, on: eventLoop)
    }

    /// 修改文件系统属性
    ///
    /// 修改文件系统属性，仅限于创建成功的文件系统。
    @inlinable @discardableResult
    public func modifyFileSystem(fileSystemId: String, fileSystemName: String? = nil, description: String? = nil, capacityQuota: UInt64? = nil, superUsers: [String]? = nil, posixAcl: Bool? = nil, enableRanger: Bool? = nil, rangerServiceAddresses: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFileSystemResponse {
        try await self.modifyFileSystem(.init(fileSystemId: fileSystemId, fileSystemName: fileSystemName, description: description, capacityQuota: capacityQuota, superUsers: superUsers, posixAcl: posixAcl, enableRanger: enableRanger, rangerServiceAddresses: rangerServiceAddresses), region: region, logger: logger, on: eventLoop)
    }
}
