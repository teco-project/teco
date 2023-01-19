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

extension Cwp {
    /// ModifyWebPageProtectDir请求参数结构体
    public struct ModifyWebPageProtectDirRequest: TCRequestModel {
        /// 网站防护目录地址
        public let protectDirAddr: String

        /// 网站防护目录名称
        public let protectDirName: String

        /// 防护文件类型,分号分割 ;
        public let protectFileType: String

        /// 防护机器列表信息
        public let hostConfig: [ProtectHostConfig]

        public init(protectDirAddr: String, protectDirName: String, protectFileType: String, hostConfig: [ProtectHostConfig]) {
            self.protectDirAddr = protectDirAddr
            self.protectDirName = protectDirName
            self.protectFileType = protectFileType
            self.hostConfig = hostConfig
        }

        enum CodingKeys: String, CodingKey {
            case protectDirAddr = "ProtectDirAddr"
            case protectDirName = "ProtectDirName"
            case protectFileType = "ProtectFileType"
            case hostConfig = "HostConfig"
        }
    }

    /// ModifyWebPageProtectDir返回参数结构体
    public struct ModifyWebPageProtectDirResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建网站防护目录
    ///
    /// 创建/修改网站防护目录
    @inlinable
    public func modifyWebPageProtectDir(_ input: ModifyWebPageProtectDirRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWebPageProtectDirResponse> {
        self.client.execute(action: "ModifyWebPageProtectDir", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建网站防护目录
    ///
    /// 创建/修改网站防护目录
    @inlinable
    public func modifyWebPageProtectDir(_ input: ModifyWebPageProtectDirRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWebPageProtectDirResponse {
        try await self.client.execute(action: "ModifyWebPageProtectDir", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建网站防护目录
    ///
    /// 创建/修改网站防护目录
    @inlinable
    public func modifyWebPageProtectDir(protectDirAddr: String, protectDirName: String, protectFileType: String, hostConfig: [ProtectHostConfig], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWebPageProtectDirResponse> {
        self.modifyWebPageProtectDir(ModifyWebPageProtectDirRequest(protectDirAddr: protectDirAddr, protectDirName: protectDirName, protectFileType: protectFileType, hostConfig: hostConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建网站防护目录
    ///
    /// 创建/修改网站防护目录
    @inlinable
    public func modifyWebPageProtectDir(protectDirAddr: String, protectDirName: String, protectFileType: String, hostConfig: [ProtectHostConfig], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWebPageProtectDirResponse {
        try await self.modifyWebPageProtectDir(ModifyWebPageProtectDirRequest(protectDirAddr: protectDirAddr, protectDirName: protectDirName, protectFileType: protectFileType, hostConfig: hostConfig), region: region, logger: logger, on: eventLoop)
    }
}
