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

extension Cvm {
    /// ModifyInstancesVpcAttribute请求参数结构体
    public struct ModifyInstancesVpcAttributeRequest: TCRequestModel {
        /// 待操作的实例ID数组。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。
        public let instanceIds: [String]

        /// 私有网络相关信息配置，通过该参数指定私有网络的ID，子网ID，私有网络ip等信息。<br><li>当指定私有网络ID和子网ID（子网必须在实例所在的可用区）与指定实例所在私有网络不一致时，会将实例迁移至指定的私有网络的子网下。<br><li>可通过`PrivateIpAddresses`指定私有网络子网IP，若需指定则所有已指定的实例均需要指定子网IP，此时`InstanceIds`与`PrivateIpAddresses`一一对应。<br><li>不指定`PrivateIpAddresses`时随机分配私有网络子网IP。
        public let virtualPrivateCloud: VirtualPrivateCloud

        /// 是否对运行中的实例选择强制关机。默认为TRUE。
        public let forceStop: Bool?

        /// 是否保留主机名。默认为FALSE。
        public let reserveHostName: Bool?

        public init(instanceIds: [String], virtualPrivateCloud: VirtualPrivateCloud, forceStop: Bool? = nil, reserveHostName: Bool? = nil) {
            self.instanceIds = instanceIds
            self.virtualPrivateCloud = virtualPrivateCloud
            self.forceStop = forceStop
            self.reserveHostName = reserveHostName
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case virtualPrivateCloud = "VirtualPrivateCloud"
            case forceStop = "ForceStop"
            case reserveHostName = "ReserveHostName"
        }
    }

    /// ModifyInstancesVpcAttribute返回参数结构体
    public struct ModifyInstancesVpcAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例vpc属性
    ///
    /// 本接口(ModifyInstancesVpcAttribute)用于修改实例vpc属性，如私有网络IP。
    /// * 此操作默认会关闭实例，完成后再启动。
    /// * 当指定私有网络ID和子网ID（子网必须在实例所在的可用区）与指定实例所在私有网络不一致时，会将实例迁移至指定的私有网络的子网下。执行此操作前请确保指定的实例上没有绑定[弹性网卡](https://cloud.tencent.com/document/product/576)和[负载均衡](https://cloud.tencent.com/document/product/214)。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func modifyInstancesVpcAttribute(_ input: ModifyInstancesVpcAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstancesVpcAttributeResponse> {
        self.client.execute(action: "ModifyInstancesVpcAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例vpc属性
    ///
    /// 本接口(ModifyInstancesVpcAttribute)用于修改实例vpc属性，如私有网络IP。
    /// * 此操作默认会关闭实例，完成后再启动。
    /// * 当指定私有网络ID和子网ID（子网必须在实例所在的可用区）与指定实例所在私有网络不一致时，会将实例迁移至指定的私有网络的子网下。执行此操作前请确保指定的实例上没有绑定[弹性网卡](https://cloud.tencent.com/document/product/576)和[负载均衡](https://cloud.tencent.com/document/product/214)。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func modifyInstancesVpcAttribute(_ input: ModifyInstancesVpcAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesVpcAttributeResponse {
        try await self.client.execute(action: "ModifyInstancesVpcAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例vpc属性
    ///
    /// 本接口(ModifyInstancesVpcAttribute)用于修改实例vpc属性，如私有网络IP。
    /// * 此操作默认会关闭实例，完成后再启动。
    /// * 当指定私有网络ID和子网ID（子网必须在实例所在的可用区）与指定实例所在私有网络不一致时，会将实例迁移至指定的私有网络的子网下。执行此操作前请确保指定的实例上没有绑定[弹性网卡](https://cloud.tencent.com/document/product/576)和[负载均衡](https://cloud.tencent.com/document/product/214)。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func modifyInstancesVpcAttribute(instanceIds: [String], virtualPrivateCloud: VirtualPrivateCloud, forceStop: Bool? = nil, reserveHostName: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstancesVpcAttributeResponse> {
        self.modifyInstancesVpcAttribute(ModifyInstancesVpcAttributeRequest(instanceIds: instanceIds, virtualPrivateCloud: virtualPrivateCloud, forceStop: forceStop, reserveHostName: reserveHostName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例vpc属性
    ///
    /// 本接口(ModifyInstancesVpcAttribute)用于修改实例vpc属性，如私有网络IP。
    /// * 此操作默认会关闭实例，完成后再启动。
    /// * 当指定私有网络ID和子网ID（子网必须在实例所在的可用区）与指定实例所在私有网络不一致时，会将实例迁移至指定的私有网络的子网下。执行此操作前请确保指定的实例上没有绑定[弹性网卡](https://cloud.tencent.com/document/product/576)和[负载均衡](https://cloud.tencent.com/document/product/214)。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func modifyInstancesVpcAttribute(instanceIds: [String], virtualPrivateCloud: VirtualPrivateCloud, forceStop: Bool? = nil, reserveHostName: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesVpcAttributeResponse {
        try await self.modifyInstancesVpcAttribute(ModifyInstancesVpcAttributeRequest(instanceIds: instanceIds, virtualPrivateCloud: virtualPrivateCloud, forceStop: forceStop, reserveHostName: reserveHostName), region: region, logger: logger, on: eventLoop)
    }
}
