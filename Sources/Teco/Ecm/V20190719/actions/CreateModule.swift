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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ecm {
    /// CreateModule请求参数结构体
    public struct CreateModuleRequest: TCRequestModel {
        /// 模块名称，如视频直播模块。限制：模块名称不得以空格开头，长度不得超过60个字符。
        public let moduleName: String

        /// 默认带宽，单位：M。范围不得超过带宽上下限，详看DescribeConfig。
        public let defaultBandWidth: Int64

        /// 默认镜像，如img-qsdf3ff2。
        public let defaultImageId: String

        /// 机型ID。
        public let instanceType: String

        /// 默认系统盘大小，单位：G，默认大小为50G。范围不得超过系统盘上下限制，详看DescribeConfig。
        public let defaultSystemDiskSize: Int64

        /// 默认数据盘大小，单位：G。范围不得超过数据盘范围大小，详看DescribeConfig。
        public let defaultDataDiskSize: Int64

        /// 是否关闭IP直通。取值范围：
        /// true：表示关闭IP直通
        /// false：表示开通IP直通
        public let closeIpDirect: Bool?

        /// 标签列表。
        public let tagSpecification: [TagSpecification]?

        /// 模块默认安全组列表
        public let securityGroups: [String]?

        /// 默认入带宽，单位：M。范围不得超过带宽上下限，详看DescribeConfig。
        public let defaultBandWidthIn: Int64?

        /// 是否禁止分配外网IP
        public let disableWanIp: Bool?

        /// 系统盘信息。
        public let systemDisk: SystemDisk?

        /// 数据盘信息。
        public let dataDisks: [DataDisk]?

        public init(moduleName: String, defaultBandWidth: Int64, defaultImageId: String, instanceType: String, defaultSystemDiskSize: Int64, defaultDataDiskSize: Int64, closeIpDirect: Bool? = nil, tagSpecification: [TagSpecification]? = nil, securityGroups: [String]? = nil, defaultBandWidthIn: Int64? = nil, disableWanIp: Bool? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil) {
            self.moduleName = moduleName
            self.defaultBandWidth = defaultBandWidth
            self.defaultImageId = defaultImageId
            self.instanceType = instanceType
            self.defaultSystemDiskSize = defaultSystemDiskSize
            self.defaultDataDiskSize = defaultDataDiskSize
            self.closeIpDirect = closeIpDirect
            self.tagSpecification = tagSpecification
            self.securityGroups = securityGroups
            self.defaultBandWidthIn = defaultBandWidthIn
            self.disableWanIp = disableWanIp
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
        }

        enum CodingKeys: String, CodingKey {
            case moduleName = "ModuleName"
            case defaultBandWidth = "DefaultBandWidth"
            case defaultImageId = "DefaultImageId"
            case instanceType = "InstanceType"
            case defaultSystemDiskSize = "DefaultSystemDiskSize"
            case defaultDataDiskSize = "DefaultDataDiskSize"
            case closeIpDirect = "CloseIpDirect"
            case tagSpecification = "TagSpecification"
            case securityGroups = "SecurityGroups"
            case defaultBandWidthIn = "DefaultBandWidthIn"
            case disableWanIp = "DisableWanIp"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
        }
    }

    /// CreateModule返回参数结构体
    public struct CreateModuleResponse: TCResponseModel {
        /// 模块ID，创建模块成功后分配给该模块的ID。
        public let moduleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case moduleId = "ModuleId"
            case requestId = "RequestId"
        }
    }

    /// 创建模块
    @inlinable
    public func createModule(_ input: CreateModuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModuleResponse> {
        self.client.execute(action: "CreateModule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建模块
    @inlinable
    public func createModule(_ input: CreateModuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModuleResponse {
        try await self.client.execute(action: "CreateModule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建模块
    @inlinable
    public func createModule(moduleName: String, defaultBandWidth: Int64, defaultImageId: String, instanceType: String, defaultSystemDiskSize: Int64, defaultDataDiskSize: Int64, closeIpDirect: Bool? = nil, tagSpecification: [TagSpecification]? = nil, securityGroups: [String]? = nil, defaultBandWidthIn: Int64? = nil, disableWanIp: Bool? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModuleResponse> {
        self.createModule(.init(moduleName: moduleName, defaultBandWidth: defaultBandWidth, defaultImageId: defaultImageId, instanceType: instanceType, defaultSystemDiskSize: defaultSystemDiskSize, defaultDataDiskSize: defaultDataDiskSize, closeIpDirect: closeIpDirect, tagSpecification: tagSpecification, securityGroups: securityGroups, defaultBandWidthIn: defaultBandWidthIn, disableWanIp: disableWanIp, systemDisk: systemDisk, dataDisks: dataDisks), region: region, logger: logger, on: eventLoop)
    }

    /// 创建模块
    @inlinable
    public func createModule(moduleName: String, defaultBandWidth: Int64, defaultImageId: String, instanceType: String, defaultSystemDiskSize: Int64, defaultDataDiskSize: Int64, closeIpDirect: Bool? = nil, tagSpecification: [TagSpecification]? = nil, securityGroups: [String]? = nil, defaultBandWidthIn: Int64? = nil, disableWanIp: Bool? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModuleResponse {
        try await self.createModule(.init(moduleName: moduleName, defaultBandWidth: defaultBandWidth, defaultImageId: defaultImageId, instanceType: instanceType, defaultSystemDiskSize: defaultSystemDiskSize, defaultDataDiskSize: defaultDataDiskSize, closeIpDirect: closeIpDirect, tagSpecification: tagSpecification, securityGroups: securityGroups, defaultBandWidthIn: defaultBandWidthIn, disableWanIp: disableWanIp, systemDisk: systemDisk, dataDisks: dataDisks), region: region, logger: logger, on: eventLoop)
    }
}
