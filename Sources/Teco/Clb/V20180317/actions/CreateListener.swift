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

extension Clb {
    /// CreateListener请求参数结构体
    public struct CreateListenerRequest: TCRequestModel {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String

        /// 要将监听器创建到哪些端口，每个端口对应一个新的监听器。
        public let ports: [Int64]

        /// 监听器协议： TCP | UDP | HTTP | HTTPS | TCP_SSL | QUIC。
        public let `protocol`: String

        /// 要创建的监听器名称列表，名称与Ports数组按序一一对应，如不需立即命名，则无需提供此参数。
        public let listenerNames: [String]?

        /// 健康检查相关参数，此参数仅适用于TCP/UDP/TCP_SSL监听器。
        public let healthCheck: HealthCheck?

        /// 证书相关信息，此参数仅适用于TCP_SSL监听器和未开启SNI特性的HTTPS监听器。此参数和MultiCertInfo不能同时传入。
        public let certificate: CertificateInput?

        /// 会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。此参数仅适用于TCP/UDP监听器。
        public let sessionExpireTime: Int64?

        /// 监听器转发的方式。可选值：WRR、LEAST_CONN
        /// 分别表示按权重轮询、最小连接数， 默认为 WRR。此参数仅适用于TCP/UDP/TCP_SSL监听器。
        public let scheduler: String?

        /// 是否开启SNI特性，此参数仅适用于HTTPS监听器。
        public let sniSwitch: Int64?

        /// 后端目标类型，NODE表示绑定普通节点，TARGETGROUP表示绑定目标组。
        public let targetType: String?

        /// 会话保持类型。不传或传NORMAL表示默认会话保持类型。QUIC_CID 表示根据Quic Connection ID做会话保持。QUIC_CID只支持UDP协议。
        public let sessionType: String?

        /// 是否开启长连接，此参数仅适用于HTTP/HTTPS监听器，0:关闭；1:开启， 默认关闭。
        public let keepaliveEnable: Int64?

        /// 创建端口段监听器时必须传入此参数，用以标识结束端口。同时，入参Ports只允许传入一个成员，用以标识开始端口。【如果您需要体验端口段功能，请通过 [工单申请](https://console.cloud.tencent.com/workorder/category)】。
        public let endPort: UInt64?

        /// 解绑后端目标时，是否发RST给客户端，此参数仅适用于TCP监听器。
        public let deregisterTargetRst: Bool?

        /// 证书信息，支持同时传入不同算法类型的多本服务端证书；此参数仅适用于未开启SNI特性的HTTPS监听器。此参数和Certificate不能同时传入。
        public let multiCertInfo: MultiCertInfo?

        /// 监听器最大连接数，只有TCP/UDP/TCP_SSL/QUIC监听器支持，不传或者传-1表示监听器维度不限速。
        public let maxConn: Int64?

        /// 监听器最大新增连接数，只有TCP/UDP/TCP_SSL/QUIC监听器支持，不传或者传-1表示监听器维度不限速。
        public let maxCps: Int64?

        public init(loadBalancerId: String, ports: [Int64], protocol: String, listenerNames: [String]? = nil, healthCheck: HealthCheck? = nil, certificate: CertificateInput? = nil, sessionExpireTime: Int64? = nil, scheduler: String? = nil, sniSwitch: Int64? = nil, targetType: String? = nil, sessionType: String? = nil, keepaliveEnable: Int64? = nil, endPort: UInt64? = nil, deregisterTargetRst: Bool? = nil, multiCertInfo: MultiCertInfo? = nil, maxConn: Int64? = nil, maxCps: Int64? = nil) {
            self.loadBalancerId = loadBalancerId
            self.ports = ports
            self.protocol = `protocol`
            self.listenerNames = listenerNames
            self.healthCheck = healthCheck
            self.certificate = certificate
            self.sessionExpireTime = sessionExpireTime
            self.scheduler = scheduler
            self.sniSwitch = sniSwitch
            self.targetType = targetType
            self.sessionType = sessionType
            self.keepaliveEnable = keepaliveEnable
            self.endPort = endPort
            self.deregisterTargetRst = deregisterTargetRst
            self.multiCertInfo = multiCertInfo
            self.maxConn = maxConn
            self.maxCps = maxCps
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case ports = "Ports"
            case `protocol` = "Protocol"
            case listenerNames = "ListenerNames"
            case healthCheck = "HealthCheck"
            case certificate = "Certificate"
            case sessionExpireTime = "SessionExpireTime"
            case scheduler = "Scheduler"
            case sniSwitch = "SniSwitch"
            case targetType = "TargetType"
            case sessionType = "SessionType"
            case keepaliveEnable = "KeepaliveEnable"
            case endPort = "EndPort"
            case deregisterTargetRst = "DeregisterTargetRst"
            case multiCertInfo = "MultiCertInfo"
            case maxConn = "MaxConn"
            case maxCps = "MaxCps"
        }
    }

    /// CreateListener返回参数结构体
    public struct CreateListenerResponse: TCResponseModel {
        /// 创建的监听器的唯一标识数组。
        public let listenerIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerIds = "ListenerIds"
            case requestId = "RequestId"
        }
    }

    /// 创建负载均衡监听器
    ///
    /// 在一个负载均衡实例下创建监听器。
    /// 本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func createListener(_ input: CreateListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateListenerResponse> {
        self.client.execute(action: "CreateListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡监听器
    ///
    /// 在一个负载均衡实例下创建监听器。
    /// 本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func createListener(_ input: CreateListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateListenerResponse {
        try await self.client.execute(action: "CreateListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建负载均衡监听器
    ///
    /// 在一个负载均衡实例下创建监听器。
    /// 本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func createListener(loadBalancerId: String, ports: [Int64], protocol: String, listenerNames: [String]? = nil, healthCheck: HealthCheck? = nil, certificate: CertificateInput? = nil, sessionExpireTime: Int64? = nil, scheduler: String? = nil, sniSwitch: Int64? = nil, targetType: String? = nil, sessionType: String? = nil, keepaliveEnable: Int64? = nil, endPort: UInt64? = nil, deregisterTargetRst: Bool? = nil, multiCertInfo: MultiCertInfo? = nil, maxConn: Int64? = nil, maxCps: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateListenerResponse> {
        self.createListener(.init(loadBalancerId: loadBalancerId, ports: ports, protocol: `protocol`, listenerNames: listenerNames, healthCheck: healthCheck, certificate: certificate, sessionExpireTime: sessionExpireTime, scheduler: scheduler, sniSwitch: sniSwitch, targetType: targetType, sessionType: sessionType, keepaliveEnable: keepaliveEnable, endPort: endPort, deregisterTargetRst: deregisterTargetRst, multiCertInfo: multiCertInfo, maxConn: maxConn, maxCps: maxCps), region: region, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡监听器
    ///
    /// 在一个负载均衡实例下创建监听器。
    /// 本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func createListener(loadBalancerId: String, ports: [Int64], protocol: String, listenerNames: [String]? = nil, healthCheck: HealthCheck? = nil, certificate: CertificateInput? = nil, sessionExpireTime: Int64? = nil, scheduler: String? = nil, sniSwitch: Int64? = nil, targetType: String? = nil, sessionType: String? = nil, keepaliveEnable: Int64? = nil, endPort: UInt64? = nil, deregisterTargetRst: Bool? = nil, multiCertInfo: MultiCertInfo? = nil, maxConn: Int64? = nil, maxCps: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateListenerResponse {
        try await self.createListener(.init(loadBalancerId: loadBalancerId, ports: ports, protocol: `protocol`, listenerNames: listenerNames, healthCheck: healthCheck, certificate: certificate, sessionExpireTime: sessionExpireTime, scheduler: scheduler, sniSwitch: sniSwitch, targetType: targetType, sessionType: sessionType, keepaliveEnable: keepaliveEnable, endPort: endPort, deregisterTargetRst: deregisterTargetRst, multiCertInfo: multiCertInfo, maxConn: maxConn, maxCps: maxCps), region: region, logger: logger, on: eventLoop)
    }
}
