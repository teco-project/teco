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

extension Bmvpc {
    /// CreateNatGateway请求参数结构体
    public struct CreateNatGatewayRequest: TCRequestModel {
        /// 转发模式，其中0表示IP方式，1表示网段方式；通过cidr方式可支持更多的IP接入到NAT网关
        public let forwardMode: String

        /// 私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String

        /// NAT名称
        public let natName: String

        /// 并发连接数规格；取值为1000000、3000000、10000000，分别对应小型、中型、大型NAT网关
        public let maxConcurrent: UInt64

        /// 子网ID列表，子网下全部IP将加入NAT，不区分网关转发方式
        public let subnetIds: [String]?

        /// 部分IP信息，子网下只有该部分IP将加入NAT，仅当网关转发模式为IP方式有效；IpInfoSet和SubnetIds中的子网ID不能同时存在
        public let ipInfoSet: [IpInfo]?

        /// 已分配的EIP列表, AssignedEips和AutoAllocEipNum至少输入一个
        public let assignedEips: [String]?

        /// 新建EIP数目，系统将会按您的要求生产该数目个数EIP, AssignedEips和AutoAllocEipNum至少输入一个
        public let autoAllocEipNum: UInt64?

        /// 独占标识，取值为0和1，默认值为0；0和1分别表示创建共享型NAT网关和独占NAT型网关；由于同一个VPC网络内，指向NAT集群的默认路由只有一条，因此VPC内只能创建一种类型NAT网关；创建独占型NAT网关时，需联系对应架构师进行独占NAT集群搭建，否则无法创建独占型NAT网关。
        public let exclusive: UInt64?

        public init(forwardMode: String, vpcId: String, natName: String, maxConcurrent: UInt64, subnetIds: [String]? = nil, ipInfoSet: [IpInfo]? = nil, assignedEips: [String]? = nil, autoAllocEipNum: UInt64? = nil, exclusive: UInt64? = nil) {
            self.forwardMode = forwardMode
            self.vpcId = vpcId
            self.natName = natName
            self.maxConcurrent = maxConcurrent
            self.subnetIds = subnetIds
            self.ipInfoSet = ipInfoSet
            self.assignedEips = assignedEips
            self.autoAllocEipNum = autoAllocEipNum
            self.exclusive = exclusive
        }

        enum CodingKeys: String, CodingKey {
            case forwardMode = "ForwardMode"
            case vpcId = "VpcId"
            case natName = "NatName"
            case maxConcurrent = "MaxConcurrent"
            case subnetIds = "SubnetIds"
            case ipInfoSet = "IpInfoSet"
            case assignedEips = "AssignedEips"
            case autoAllocEipNum = "AutoAllocEipNum"
            case exclusive = "Exclusive"
        }
    }

    /// CreateNatGateway返回参数结构体
    public struct CreateNatGatewayResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建NAT网关
    ///
    /// 创建NAT网关接口，可针对网段方式、子网全部IP、子网部分IP这三种方式创建NAT网关
    @inlinable
    public func createNatGateway(_ input: CreateNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNatGatewayResponse> {
        self.client.execute(action: "CreateNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建NAT网关
    ///
    /// 创建NAT网关接口，可针对网段方式、子网全部IP、子网部分IP这三种方式创建NAT网关
    @inlinable
    public func createNatGateway(_ input: CreateNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNatGatewayResponse {
        try await self.client.execute(action: "CreateNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建NAT网关
    ///
    /// 创建NAT网关接口，可针对网段方式、子网全部IP、子网部分IP这三种方式创建NAT网关
    @inlinable
    public func createNatGateway(forwardMode: String, vpcId: String, natName: String, maxConcurrent: UInt64, subnetIds: [String]? = nil, ipInfoSet: [IpInfo]? = nil, assignedEips: [String]? = nil, autoAllocEipNum: UInt64? = nil, exclusive: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNatGatewayResponse> {
        self.createNatGateway(.init(forwardMode: forwardMode, vpcId: vpcId, natName: natName, maxConcurrent: maxConcurrent, subnetIds: subnetIds, ipInfoSet: ipInfoSet, assignedEips: assignedEips, autoAllocEipNum: autoAllocEipNum, exclusive: exclusive), region: region, logger: logger, on: eventLoop)
    }

    /// 创建NAT网关
    ///
    /// 创建NAT网关接口，可针对网段方式、子网全部IP、子网部分IP这三种方式创建NAT网关
    @inlinable
    public func createNatGateway(forwardMode: String, vpcId: String, natName: String, maxConcurrent: UInt64, subnetIds: [String]? = nil, ipInfoSet: [IpInfo]? = nil, assignedEips: [String]? = nil, autoAllocEipNum: UInt64? = nil, exclusive: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNatGatewayResponse {
        try await self.createNatGateway(.init(forwardMode: forwardMode, vpcId: vpcId, natName: natName, maxConcurrent: maxConcurrent, subnetIds: subnetIds, ipInfoSet: ipInfoSet, assignedEips: assignedEips, autoAllocEipNum: autoAllocEipNum, exclusive: exclusive), region: region, logger: logger, on: eventLoop)
    }
}
