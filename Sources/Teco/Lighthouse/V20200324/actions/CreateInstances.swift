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

extension Lighthouse {
    /// CreateInstances请求参数结构体
    public struct CreateInstancesRequest: TCRequestModel {
        /// 套餐ID。可以通过调用 [查询套餐](https://cloud.tencent.com/document/api/1207/47575) 接口获取。
        public let bundleId: String

        /// 镜像ID。可以通过调用 [查询镜像信息](https://cloud.tencent.com/document/api/1207/47689) 接口获取。
        public let blueprintId: String

        /// 当前实例仅支持预付费模式，即包年包月相关参数设置，单位（月）。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid

        /// 实例显示名称。
        public let instanceName: String?

        /// 购买实例数量。包年包月实例取值范围：[1，30]。默认取值：1。指定购买实例的数量不能超过用户所能购买的剩余配额数量
        public let instanceCount: UInt64?

        /// 可用区列表。默认为随机可用区
        public let zones: [String]?

        /// 是否只预检此次请求。
        /// true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和库存。
        /// 如果检查不通过，则返回对应错误码；
        /// 如果检查通过，则返回RequestId.
        /// false（默认）：发送正常请求，通过检查后直接创建实例
        public let dryRun: Bool?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        /// 实例登录密码信息配置。本字段目前仅支持WINDOWS实例进行密码设置。默认缺失情况下代表用户选择实例创建后设置登录密码。
        public let loginConfiguration: LoginConfiguration?

        /// 要创建的容器配置列表。
        public let containers: [DockerContainerConfiguration]?

        /// 是否自动使用代金券。默认不使用。
        public let autoVoucher: Bool?

        public init(bundleId: String, blueprintId: String, instanceChargePrepaid: InstanceChargePrepaid, instanceName: String? = nil, instanceCount: UInt64? = nil, zones: [String]? = nil, dryRun: Bool? = nil, clientToken: String? = nil, loginConfiguration: LoginConfiguration? = nil, containers: [DockerContainerConfiguration]? = nil, autoVoucher: Bool? = nil) {
            self.bundleId = bundleId
            self.blueprintId = blueprintId
            self.instanceChargePrepaid = instanceChargePrepaid
            self.instanceName = instanceName
            self.instanceCount = instanceCount
            self.zones = zones
            self.dryRun = dryRun
            self.clientToken = clientToken
            self.loginConfiguration = loginConfiguration
            self.containers = containers
            self.autoVoucher = autoVoucher
        }

        enum CodingKeys: String, CodingKey {
            case bundleId = "BundleId"
            case blueprintId = "BlueprintId"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case instanceName = "InstanceName"
            case instanceCount = "InstanceCount"
            case zones = "Zones"
            case dryRun = "DryRun"
            case clientToken = "ClientToken"
            case loginConfiguration = "LoginConfiguration"
            case containers = "Containers"
            case autoVoucher = "AutoVoucher"
        }
    }

    /// CreateInstances返回参数结构体
    public struct CreateInstancesResponse: TCResponseModel {
        /// 当通过本接口来创建实例时会返回该参数，表示一个或多个实例ID。返回实例ID列表并不代表实例创建成功。
        ///
        /// 可根据 DescribeInstances 接口查询返回的InstancesSet中对应实例的ID的状态来判断创建是否完成；如果实例状态由“启动中”变为“运行中”，则为创建成功。
        public let instanceIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建实例
    ///
    /// 本接口(CreateInstances)用于创建一个或多个指定套餐的轻量应用服务器实例。
    @inlinable
    public func createInstances(_ input: CreateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstancesResponse> {
        self.client.execute(action: "CreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例
    ///
    /// 本接口(CreateInstances)用于创建一个或多个指定套餐的轻量应用服务器实例。
    @inlinable
    public func createInstances(_ input: CreateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancesResponse {
        try await self.client.execute(action: "CreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例
    ///
    /// 本接口(CreateInstances)用于创建一个或多个指定套餐的轻量应用服务器实例。
    @inlinable
    public func createInstances(bundleId: String, blueprintId: String, instanceChargePrepaid: InstanceChargePrepaid, instanceName: String? = nil, instanceCount: UInt64? = nil, zones: [String]? = nil, dryRun: Bool? = nil, clientToken: String? = nil, loginConfiguration: LoginConfiguration? = nil, containers: [DockerContainerConfiguration]? = nil, autoVoucher: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstancesResponse> {
        self.createInstances(.init(bundleId: bundleId, blueprintId: blueprintId, instanceChargePrepaid: instanceChargePrepaid, instanceName: instanceName, instanceCount: instanceCount, zones: zones, dryRun: dryRun, clientToken: clientToken, loginConfiguration: loginConfiguration, containers: containers, autoVoucher: autoVoucher), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例
    ///
    /// 本接口(CreateInstances)用于创建一个或多个指定套餐的轻量应用服务器实例。
    @inlinable
    public func createInstances(bundleId: String, blueprintId: String, instanceChargePrepaid: InstanceChargePrepaid, instanceName: String? = nil, instanceCount: UInt64? = nil, zones: [String]? = nil, dryRun: Bool? = nil, clientToken: String? = nil, loginConfiguration: LoginConfiguration? = nil, containers: [DockerContainerConfiguration]? = nil, autoVoucher: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancesResponse {
        try await self.createInstances(.init(bundleId: bundleId, blueprintId: blueprintId, instanceChargePrepaid: instanceChargePrepaid, instanceName: instanceName, instanceCount: instanceCount, zones: zones, dryRun: dryRun, clientToken: clientToken, loginConfiguration: loginConfiguration, containers: containers, autoVoucher: autoVoucher), region: region, logger: logger, on: eventLoop)
    }
}
