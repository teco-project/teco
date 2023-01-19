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

extension Ump {
    /// ReportServiceRegister请求参数结构体
    public struct ReportServiceRegisterRequest: TCRequestModel {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        /// 服务上报当前的服务能力信息
        public let serviceRegisterInfos: [ServiceRegisterInfo]

        /// 服务内网Ip
        public let serverIp: String

        /// 上报服务所在服务器的唯一ID
        public let serverNodeId: String

        /// 上报时间戳, 单位毫秒
        public let reportTime: Int64

        public init(groupCode: String, mallId: UInt64, serviceRegisterInfos: [ServiceRegisterInfo], serverIp: String, serverNodeId: String, reportTime: Int64) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.serviceRegisterInfos = serviceRegisterInfos
            self.serverIp = serverIp
            self.serverNodeId = serverNodeId
            self.reportTime = reportTime
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case serviceRegisterInfos = "ServiceRegisterInfos"
            case serverIp = "ServerIp"
            case serverNodeId = "ServerNodeId"
            case reportTime = "ReportTime"
        }
    }

    /// ReportServiceRegister返回参数结构体
    public struct ReportServiceRegisterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报服务注册
    ///
    /// 上报服务注册自身的服务地址作为回调地址, 用于信息回传。
    @inlinable
    public func reportServiceRegister(_ input: ReportServiceRegisterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportServiceRegisterResponse> {
        self.client.execute(action: "ReportServiceRegister", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报服务注册
    ///
    /// 上报服务注册自身的服务地址作为回调地址, 用于信息回传。
    @inlinable
    public func reportServiceRegister(_ input: ReportServiceRegisterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportServiceRegisterResponse {
        try await self.client.execute(action: "ReportServiceRegister", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报服务注册
    ///
    /// 上报服务注册自身的服务地址作为回调地址, 用于信息回传。
    @inlinable
    public func reportServiceRegister(groupCode: String, mallId: UInt64, serviceRegisterInfos: [ServiceRegisterInfo], serverIp: String, serverNodeId: String, reportTime: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportServiceRegisterResponse> {
        self.reportServiceRegister(ReportServiceRegisterRequest(groupCode: groupCode, mallId: mallId, serviceRegisterInfos: serviceRegisterInfos, serverIp: serverIp, serverNodeId: serverNodeId, reportTime: reportTime), region: region, logger: logger, on: eventLoop)
    }

    /// 上报服务注册
    ///
    /// 上报服务注册自身的服务地址作为回调地址, 用于信息回传。
    @inlinable
    public func reportServiceRegister(groupCode: String, mallId: UInt64, serviceRegisterInfos: [ServiceRegisterInfo], serverIp: String, serverNodeId: String, reportTime: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportServiceRegisterResponse {
        try await self.reportServiceRegister(ReportServiceRegisterRequest(groupCode: groupCode, mallId: mallId, serviceRegisterInfos: serviceRegisterInfos, serverIp: serverIp, serverNodeId: serverNodeId, reportTime: reportTime), region: region, logger: logger, on: eventLoop)
    }
}
