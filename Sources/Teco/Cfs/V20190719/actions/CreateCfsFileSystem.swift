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

import TecoCore

extension Cfs {
    /// CreateCfsFileSystem请求参数结构体
    public struct CreateCfsFileSystemRequest: TCRequestModel {
        /// 可用区名称，例如ap-beijing-1，请参考 [概览](https://cloud.tencent.com/document/product/582/13225) 文档中的地域与可用区列表
        public let zone: String

        /// 网络类型，可选值为 VPC，BASIC，CCN；其中 VPC 为私有网络，BASIC 为基础网络, CCN 为云联网，Turbo系列当前必须选择云联网。目前基础网络已逐渐淘汰，不推荐使用。
        public let netInterface: String

        /// 权限组 ID，通用标准型和性能型必填，turbo系列请填写pgroupbasic
        public let pGroupId: String

        /// 文件系统协议类型， 值为 NFS、CIFS、TURBO ; 若留空则默认为 NFS协议，turbo系列必须选择turbo，不支持NFS、CIFS
        public let `protocol`: String?

        /// 文件系统存储类型，默认值为 SD ；其中 SD 为通用标准型标准型存储， HP为通用性能型存储， TB为turbo标准型， TP 为turbo性能型。
        public let storageType: String?

        /// 私有网络（VPC） ID，若网络类型选择的是VPC，该字段为必填。
        public let vpcId: String?

        /// 子网 ID，若网络类型选择的是VPC，该字段为必填。
        public let subnetId: String?

        /// 指定IP地址，仅VPC网络支持；若不填写、将在该子网下随机分配 IP，Turbo系列当前不支持指定
        public let mountIP: String?

        /// 用户自定义文件系统名称
        public let fsName: String?

        /// 文件系统标签
        public let resourceTags: [TagInfo]?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。用于保证请求幂等性的字符串失效时间为2小时。
        public let clientToken: String?

        /// 云联网ID， 若网络类型选择的是CCN，该字段为必填
        public let ccnId: String?

        /// 云联网中CFS使用的网段， 若网络类型选择的是Ccn，该字段为必填，且不能和Ccn中已经绑定的网段冲突
        public let cidrBlock: String?

        /// 文件系统容量，turbo系列必填，单位为GiB。 turbo标准型单位GB，起售40TiB，即40960 GiB；扩容步长20TiB，即20480 GiB。turbo性能型起售20TiB，即20480 GiB；扩容步长10TiB，10240 GiB。
        public let capacity: UInt64?

        public init(zone: String, netInterface: String, pGroupId: String, protocol: String? = nil, storageType: String? = nil, vpcId: String? = nil, subnetId: String? = nil, mountIP: String? = nil, fsName: String? = nil, resourceTags: [TagInfo]? = nil, clientToken: String? = nil, ccnId: String? = nil, cidrBlock: String? = nil, capacity: UInt64? = nil) {
            self.zone = zone
            self.netInterface = netInterface
            self.pGroupId = pGroupId
            self.protocol = `protocol`
            self.storageType = storageType
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.mountIP = mountIP
            self.fsName = fsName
            self.resourceTags = resourceTags
            self.clientToken = clientToken
            self.ccnId = ccnId
            self.cidrBlock = cidrBlock
            self.capacity = capacity
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case netInterface = "NetInterface"
            case pGroupId = "PGroupId"
            case `protocol` = "Protocol"
            case storageType = "StorageType"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case mountIP = "MountIP"
            case fsName = "FsName"
            case resourceTags = "ResourceTags"
            case clientToken = "ClientToken"
            case ccnId = "CcnId"
            case cidrBlock = "CidrBlock"
            case capacity = "Capacity"
        }
    }

    /// CreateCfsFileSystem返回参数结构体
    public struct CreateCfsFileSystemResponse: TCResponseModel {
        /// 文件系统创建时间
        public let creationTime: String

        /// 用户自定义文件系统名称
        public let creationToken: String

        /// 文件系统 ID
        public let fileSystemId: String

        /// 文件系统状态，可能出现状态包括：“creating”  创建中, “create_failed” 创建失败, “available” 可用, “unserviced” 不可用, “upgrading” 升级中， “deleting” 删除中。
        public let lifeCycleState: String

        /// 文件系统已使用容量大小，单位为 Byte
        public let sizeByte: UInt64

        /// 可用区 ID
        public let zoneId: UInt64

        /// 用户自定义文件系统名称
        public let fsName: String

        /// 文件系统是否加密
        public let encrypted: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case creationToken = "CreationToken"
            case fileSystemId = "FileSystemId"
            case lifeCycleState = "LifeCycleState"
            case sizeByte = "SizeByte"
            case zoneId = "ZoneId"
            case fsName = "FsName"
            case encrypted = "Encrypted"
            case requestId = "RequestId"
        }
    }

    /// 创建文件系统
    ///
    /// 用于添加新文件系统
    @inlinable
    public func createCfsFileSystem(_ input: CreateCfsFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCfsFileSystemResponse> {
        self.client.execute(action: "CreateCfsFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建文件系统
    ///
    /// 用于添加新文件系统
    @inlinable
    public func createCfsFileSystem(_ input: CreateCfsFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCfsFileSystemResponse {
        try await self.client.execute(action: "CreateCfsFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建文件系统
    ///
    /// 用于添加新文件系统
    @inlinable
    public func createCfsFileSystem(zone: String, netInterface: String, pGroupId: String, protocol: String? = nil, storageType: String? = nil, vpcId: String? = nil, subnetId: String? = nil, mountIP: String? = nil, fsName: String? = nil, resourceTags: [TagInfo]? = nil, clientToken: String? = nil, ccnId: String? = nil, cidrBlock: String? = nil, capacity: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCfsFileSystemResponse> {
        self.createCfsFileSystem(.init(zone: zone, netInterface: netInterface, pGroupId: pGroupId, protocol: `protocol`, storageType: storageType, vpcId: vpcId, subnetId: subnetId, mountIP: mountIP, fsName: fsName, resourceTags: resourceTags, clientToken: clientToken, ccnId: ccnId, cidrBlock: cidrBlock, capacity: capacity), region: region, logger: logger, on: eventLoop)
    }

    /// 创建文件系统
    ///
    /// 用于添加新文件系统
    @inlinable
    public func createCfsFileSystem(zone: String, netInterface: String, pGroupId: String, protocol: String? = nil, storageType: String? = nil, vpcId: String? = nil, subnetId: String? = nil, mountIP: String? = nil, fsName: String? = nil, resourceTags: [TagInfo]? = nil, clientToken: String? = nil, ccnId: String? = nil, cidrBlock: String? = nil, capacity: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCfsFileSystemResponse {
        try await self.createCfsFileSystem(.init(zone: zone, netInterface: netInterface, pGroupId: pGroupId, protocol: `protocol`, storageType: storageType, vpcId: vpcId, subnetId: subnetId, mountIP: mountIP, fsName: fsName, resourceTags: resourceTags, clientToken: clientToken, ccnId: ccnId, cidrBlock: cidrBlock, capacity: capacity), region: region, logger: logger, on: eventLoop)
    }
}
