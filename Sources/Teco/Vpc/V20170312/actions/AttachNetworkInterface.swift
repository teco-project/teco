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

extension Vpc {
    /// AttachNetworkInterface请求参数结构体
    public struct AttachNetworkInterfaceRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String

        /// CVM实例ID。形如：ins-r8hr2upy。
        public let instanceId: String

        /// 网卡的挂载类型：0 标准型，1扩展型，默认值0。
        public let attachType: UInt64?

        public init(networkInterfaceId: String, instanceId: String, attachType: UInt64? = nil) {
            self.networkInterfaceId = networkInterfaceId
            self.instanceId = instanceId
            self.attachType = attachType
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case instanceId = "InstanceId"
            case attachType = "AttachType"
        }
    }

    /// AttachNetworkInterface返回参数结构体
    public struct AttachNetworkInterfaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 弹性网卡绑定云服务器
    ///
    /// 本接口（AttachNetworkInterface）用于弹性网卡绑定云服务器。
    /// * 一个弹性网卡请至少绑定一个安全组，如需绑定请参见<a href="https://cloud.tencent.com/document/product/215/43132">弹性网卡绑定安全组</a>。
    /// * 一个云服务器可以绑定多个弹性网卡，但只能绑定一个主网卡。更多限制信息详见<a href="https://cloud.tencent.com/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 一个弹性网卡只能同时绑定一个云服务器。
    /// * 只有运行中或者已关机状态的云服务器才能绑定弹性网卡，查看云服务器状态详见<a href="https://cloud.tencent.com/document/api/213/9452#InstanceStatus">腾讯云服务器信息</a>。
    /// * 弹性网卡绑定的云服务器必须是私有网络的，而且云服务器所在可用区必须和弹性网卡子网的可用区相同。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func attachNetworkInterface(_ input: AttachNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachNetworkInterfaceResponse> {
        self.client.execute(action: "AttachNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 弹性网卡绑定云服务器
    ///
    /// 本接口（AttachNetworkInterface）用于弹性网卡绑定云服务器。
    /// * 一个弹性网卡请至少绑定一个安全组，如需绑定请参见<a href="https://cloud.tencent.com/document/product/215/43132">弹性网卡绑定安全组</a>。
    /// * 一个云服务器可以绑定多个弹性网卡，但只能绑定一个主网卡。更多限制信息详见<a href="https://cloud.tencent.com/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 一个弹性网卡只能同时绑定一个云服务器。
    /// * 只有运行中或者已关机状态的云服务器才能绑定弹性网卡，查看云服务器状态详见<a href="https://cloud.tencent.com/document/api/213/9452#InstanceStatus">腾讯云服务器信息</a>。
    /// * 弹性网卡绑定的云服务器必须是私有网络的，而且云服务器所在可用区必须和弹性网卡子网的可用区相同。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func attachNetworkInterface(_ input: AttachNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachNetworkInterfaceResponse {
        try await self.client.execute(action: "AttachNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 弹性网卡绑定云服务器
    ///
    /// 本接口（AttachNetworkInterface）用于弹性网卡绑定云服务器。
    /// * 一个弹性网卡请至少绑定一个安全组，如需绑定请参见<a href="https://cloud.tencent.com/document/product/215/43132">弹性网卡绑定安全组</a>。
    /// * 一个云服务器可以绑定多个弹性网卡，但只能绑定一个主网卡。更多限制信息详见<a href="https://cloud.tencent.com/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 一个弹性网卡只能同时绑定一个云服务器。
    /// * 只有运行中或者已关机状态的云服务器才能绑定弹性网卡，查看云服务器状态详见<a href="https://cloud.tencent.com/document/api/213/9452#InstanceStatus">腾讯云服务器信息</a>。
    /// * 弹性网卡绑定的云服务器必须是私有网络的，而且云服务器所在可用区必须和弹性网卡子网的可用区相同。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func attachNetworkInterface(networkInterfaceId: String, instanceId: String, attachType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachNetworkInterfaceResponse> {
        self.attachNetworkInterface(AttachNetworkInterfaceRequest(networkInterfaceId: networkInterfaceId, instanceId: instanceId, attachType: attachType), region: region, logger: logger, on: eventLoop)
    }

    /// 弹性网卡绑定云服务器
    ///
    /// 本接口（AttachNetworkInterface）用于弹性网卡绑定云服务器。
    /// * 一个弹性网卡请至少绑定一个安全组，如需绑定请参见<a href="https://cloud.tencent.com/document/product/215/43132">弹性网卡绑定安全组</a>。
    /// * 一个云服务器可以绑定多个弹性网卡，但只能绑定一个主网卡。更多限制信息详见<a href="https://cloud.tencent.com/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 一个弹性网卡只能同时绑定一个云服务器。
    /// * 只有运行中或者已关机状态的云服务器才能绑定弹性网卡，查看云服务器状态详见<a href="https://cloud.tencent.com/document/api/213/9452#InstanceStatus">腾讯云服务器信息</a>。
    /// * 弹性网卡绑定的云服务器必须是私有网络的，而且云服务器所在可用区必须和弹性网卡子网的可用区相同。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func attachNetworkInterface(networkInterfaceId: String, instanceId: String, attachType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachNetworkInterfaceResponse {
        try await self.attachNetworkInterface(AttachNetworkInterfaceRequest(networkInterfaceId: networkInterfaceId, instanceId: instanceId, attachType: attachType), region: region, logger: logger, on: eventLoop)
    }
}
