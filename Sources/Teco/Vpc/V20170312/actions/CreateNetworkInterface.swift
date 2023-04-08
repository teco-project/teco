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

extension Vpc {
    /// CreateNetworkInterface请求参数结构体
    public struct CreateNetworkInterfaceRequest: TCRequestModel {
        /// VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String

        /// 弹性网卡名称，最大长度不能超过60个字节。
        public let networkInterfaceName: String

        /// 弹性网卡所在的子网实例ID，例如：subnet-0ap8nwca。
        public let subnetId: String

        /// 弹性网卡描述，可任意命名，但不得超过60个字符。
        public let networkInterfaceDescription: String?

        /// 新申请的内网IP地址个数，内网IP地址个数总和不能超过配额数。
        public let secondaryPrivateIpAddressCount: UInt64?

        /// 指定绑定的安全组，例如：['sg-1dd51d']。
        public let securityGroupIds: [String]?

        /// 指定的内网IP信息，单次最多指定10个。
        public let privateIpAddresses: [PrivateIpAddressSpecification]?

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?

        /// 网卡trunking模式设置，Enable-开启，Disable--关闭，默认关闭。
        public let trunkingFlag: String?

        public init(vpcId: String, networkInterfaceName: String, subnetId: String, networkInterfaceDescription: String? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, securityGroupIds: [String]? = nil, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, tags: [Tag]? = nil, trunkingFlag: String? = nil) {
            self.vpcId = vpcId
            self.networkInterfaceName = networkInterfaceName
            self.subnetId = subnetId
            self.networkInterfaceDescription = networkInterfaceDescription
            self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
            self.securityGroupIds = securityGroupIds
            self.privateIpAddresses = privateIpAddresses
            self.tags = tags
            self.trunkingFlag = trunkingFlag
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case networkInterfaceName = "NetworkInterfaceName"
            case subnetId = "SubnetId"
            case networkInterfaceDescription = "NetworkInterfaceDescription"
            case secondaryPrivateIpAddressCount = "SecondaryPrivateIpAddressCount"
            case securityGroupIds = "SecurityGroupIds"
            case privateIpAddresses = "PrivateIpAddresses"
            case tags = "Tags"
            case trunkingFlag = "TrunkingFlag"
        }
    }

    /// CreateNetworkInterface返回参数结构体
    public struct CreateNetworkInterfaceResponse: TCResponseModel {
        /// 弹性网卡实例。
        public let networkInterface: NetworkInterface

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case networkInterface = "NetworkInterface"
            case requestId = "RequestId"
        }
    }

    /// 创建弹性网卡
    ///
    /// 本接口（CreateNetworkInterface）用于创建弹性网卡。
    /// * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
    /// * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 创建弹性网卡同时可以绑定已有安全组。
    /// * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func createNetworkInterface(_ input: CreateNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkInterfaceResponse> {
        self.client.execute(action: "CreateNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建弹性网卡
    ///
    /// 本接口（CreateNetworkInterface）用于创建弹性网卡。
    /// * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
    /// * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 创建弹性网卡同时可以绑定已有安全组。
    /// * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func createNetworkInterface(_ input: CreateNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkInterfaceResponse {
        try await self.client.execute(action: "CreateNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建弹性网卡
    ///
    /// 本接口（CreateNetworkInterface）用于创建弹性网卡。
    /// * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
    /// * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 创建弹性网卡同时可以绑定已有安全组。
    /// * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func createNetworkInterface(vpcId: String, networkInterfaceName: String, subnetId: String, networkInterfaceDescription: String? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, securityGroupIds: [String]? = nil, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, tags: [Tag]? = nil, trunkingFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkInterfaceResponse> {
        self.createNetworkInterface(.init(vpcId: vpcId, networkInterfaceName: networkInterfaceName, subnetId: subnetId, networkInterfaceDescription: networkInterfaceDescription, secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount, securityGroupIds: securityGroupIds, privateIpAddresses: privateIpAddresses, tags: tags, trunkingFlag: trunkingFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 创建弹性网卡
    ///
    /// 本接口（CreateNetworkInterface）用于创建弹性网卡。
    /// * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
    /// * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 创建弹性网卡同时可以绑定已有安全组。
    /// * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func createNetworkInterface(vpcId: String, networkInterfaceName: String, subnetId: String, networkInterfaceDescription: String? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, securityGroupIds: [String]? = nil, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, tags: [Tag]? = nil, trunkingFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkInterfaceResponse {
        try await self.createNetworkInterface(.init(vpcId: vpcId, networkInterfaceName: networkInterfaceName, subnetId: subnetId, networkInterfaceDescription: networkInterfaceDescription, secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount, securityGroupIds: securityGroupIds, privateIpAddresses: privateIpAddresses, tags: tags, trunkingFlag: trunkingFlag), region: region, logger: logger, on: eventLoop)
    }
}
