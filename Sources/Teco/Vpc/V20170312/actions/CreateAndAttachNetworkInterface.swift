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

extension Vpc {
    /// CreateAndAttachNetworkInterface请求参数结构体
    public struct CreateAndAttachNetworkInterfaceRequest: TCRequest {
        /// VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String

        /// 弹性网卡名称，最大长度不能超过60个字节。
        public let networkInterfaceName: String

        /// 弹性网卡所在的子网实例ID，例如：subnet-0ap8nwca。
        public let subnetId: String

        /// 云服务器实例ID。
        public let instanceId: String

        /// 指定的内网IP信息，单次最多指定10个。
        public let privateIpAddresses: [PrivateIpAddressSpecification]?

        /// 新申请的内网IP地址个数，内网IP地址个数总和不能超过配额数。
        public let secondaryPrivateIpAddressCount: UInt64?

        /// IP服务质量等级，和SecondaryPrivateIpAddressCount配合使用，可选值：PT、AU、AG、DEFAULT，分别代表云金、云银、云铜、默认四个等级。
        public let qosLevel: String?

        /// 指定绑定的安全组，例如：['sg-1dd51d']。
        public let securityGroupIds: [String]?

        /// 弹性网卡描述，可任意命名，但不得超过60个字符。
        public let networkInterfaceDescription: String?

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]。
        public let tags: [Tag]?

        /// 绑定类型：0 标准型 1 扩展型。
        public let attachType: UInt64?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        public init(vpcId: String, networkInterfaceName: String, subnetId: String, instanceId: String, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, qosLevel: String? = nil, securityGroupIds: [String]? = nil, networkInterfaceDescription: String? = nil, tags: [Tag]? = nil, attachType: UInt64? = nil, clientToken: String? = nil) {
            self.vpcId = vpcId
            self.networkInterfaceName = networkInterfaceName
            self.subnetId = subnetId
            self.instanceId = instanceId
            self.privateIpAddresses = privateIpAddresses
            self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
            self.qosLevel = qosLevel
            self.securityGroupIds = securityGroupIds
            self.networkInterfaceDescription = networkInterfaceDescription
            self.tags = tags
            self.attachType = attachType
            self.clientToken = clientToken
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case networkInterfaceName = "NetworkInterfaceName"
            case subnetId = "SubnetId"
            case instanceId = "InstanceId"
            case privateIpAddresses = "PrivateIpAddresses"
            case secondaryPrivateIpAddressCount = "SecondaryPrivateIpAddressCount"
            case qosLevel = "QosLevel"
            case securityGroupIds = "SecurityGroupIds"
            case networkInterfaceDescription = "NetworkInterfaceDescription"
            case tags = "Tags"
            case attachType = "AttachType"
            case clientToken = "ClientToken"
        }
    }

    /// CreateAndAttachNetworkInterface返回参数结构体
    public struct CreateAndAttachNetworkInterfaceResponse: TCResponse {
        /// 弹性网卡实例。
        public let networkInterface: NetworkInterface

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case networkInterface = "NetworkInterface"
            case requestId = "RequestId"
        }
    }

    /// 创建弹性网卡并绑定云服务器
    ///
    /// 本接口（CreateAndAttachNetworkInterface）用于创建弹性网卡并绑定云服务器。
    /// * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
    /// * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见[弹性网卡使用限制](/document/product/576/18527)。
    /// * 创建弹性网卡同时可以绑定已有安全组。
    /// * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// > Important: 本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    @inlinable
    public func createAndAttachNetworkInterface(_ input: CreateAndAttachNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAndAttachNetworkInterfaceResponse> {
        self.client.execute(action: "CreateAndAttachNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建弹性网卡并绑定云服务器
    ///
    /// 本接口（CreateAndAttachNetworkInterface）用于创建弹性网卡并绑定云服务器。
    /// * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
    /// * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见[弹性网卡使用限制](/document/product/576/18527)。
    /// * 创建弹性网卡同时可以绑定已有安全组。
    /// * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// > Important: 本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    @inlinable
    public func createAndAttachNetworkInterface(_ input: CreateAndAttachNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAndAttachNetworkInterfaceResponse {
        try await self.client.execute(action: "CreateAndAttachNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建弹性网卡并绑定云服务器
    ///
    /// 本接口（CreateAndAttachNetworkInterface）用于创建弹性网卡并绑定云服务器。
    /// * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
    /// * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见[弹性网卡使用限制](/document/product/576/18527)。
    /// * 创建弹性网卡同时可以绑定已有安全组。
    /// * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// > Important: 本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    @inlinable
    public func createAndAttachNetworkInterface(vpcId: String, networkInterfaceName: String, subnetId: String, instanceId: String, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, qosLevel: String? = nil, securityGroupIds: [String]? = nil, networkInterfaceDescription: String? = nil, tags: [Tag]? = nil, attachType: UInt64? = nil, clientToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAndAttachNetworkInterfaceResponse> {
        self.createAndAttachNetworkInterface(.init(vpcId: vpcId, networkInterfaceName: networkInterfaceName, subnetId: subnetId, instanceId: instanceId, privateIpAddresses: privateIpAddresses, secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount, qosLevel: qosLevel, securityGroupIds: securityGroupIds, networkInterfaceDescription: networkInterfaceDescription, tags: tags, attachType: attachType, clientToken: clientToken), region: region, logger: logger, on: eventLoop)
    }

    /// 创建弹性网卡并绑定云服务器
    ///
    /// 本接口（CreateAndAttachNetworkInterface）用于创建弹性网卡并绑定云服务器。
    /// * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
    /// * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见[弹性网卡使用限制](/document/product/576/18527)。
    /// * 创建弹性网卡同时可以绑定已有安全组。
    /// * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// > Important: 本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    @inlinable
    public func createAndAttachNetworkInterface(vpcId: String, networkInterfaceName: String, subnetId: String, instanceId: String, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, qosLevel: String? = nil, securityGroupIds: [String]? = nil, networkInterfaceDescription: String? = nil, tags: [Tag]? = nil, attachType: UInt64? = nil, clientToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAndAttachNetworkInterfaceResponse {
        try await self.createAndAttachNetworkInterface(.init(vpcId: vpcId, networkInterfaceName: networkInterfaceName, subnetId: subnetId, instanceId: instanceId, privateIpAddresses: privateIpAddresses, secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount, qosLevel: qosLevel, securityGroupIds: securityGroupIds, networkInterfaceDescription: networkInterfaceDescription, tags: tags, attachType: attachType, clientToken: clientToken), region: region, logger: logger, on: eventLoop)
    }
}
