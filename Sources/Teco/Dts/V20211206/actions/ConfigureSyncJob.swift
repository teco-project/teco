//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dts {
    /// ConfigureSyncJob请求参数结构体
    public struct ConfigureSyncJobRequest: TCRequestModel {
        /// 同步实例id（即标识一个同步作业），形如sync-werwfs23
        public let jobId: String

        /// 源端接入类型，cdb(云数据库)、cvm(云主机自建)、vpc(私有网络)、extranet(外网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、intranet(自研上云)、noProxy,注意具体可选值依赖当前链路
        public let srcAccessType: String

        /// 源端信息
        public let srcInfo: Endpoint

        /// 目标端接入类型，cdb(云数据库)、cvm(云主机自建)、vpc(私有网络)、extranet(外网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、intranet(自研上云)、noProxy,注意具体可选值依赖当前链路
        public let dstAccessType: String

        /// 目标端信息
        public let dstInfo: Endpoint

        /// 同步任务选项
        public let options: Options

        /// 同步库表对象信息
        public let objects: Objects

        /// 同步任务名称
        public let jobName: String?

        /// 运行模式，取值如：Immediate(表示立即运行，默认为此项值)、Timed(表示定时运行)
        public let runMode: String?

        /// 期待启动时间，当RunMode取值为Timed时，此值必填，形如："2006-01-02 15:04:05"
        public let expectRunTime: String?

        public init(jobId: String, srcAccessType: String, srcInfo: Endpoint, dstAccessType: String, dstInfo: Endpoint, options: Options, objects: Objects, jobName: String? = nil, runMode: String? = nil, expectRunTime: String? = nil) {
            self.jobId = jobId
            self.srcAccessType = srcAccessType
            self.srcInfo = srcInfo
            self.dstAccessType = dstAccessType
            self.dstInfo = dstInfo
            self.options = options
            self.objects = objects
            self.jobName = jobName
            self.runMode = runMode
            self.expectRunTime = expectRunTime
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case srcAccessType = "SrcAccessType"
            case srcInfo = "SrcInfo"
            case dstAccessType = "DstAccessType"
            case dstInfo = "DstInfo"
            case options = "Options"
            case objects = "Objects"
            case jobName = "JobName"
            case runMode = "RunMode"
            case expectRunTime = "ExpectRunTime"
        }
    }

    /// ConfigureSyncJob返回参数结构体
    public struct ConfigureSyncJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 配置同步任务
    ///
    /// 配置一个同步任务
    @inlinable
    public func configureSyncJob(_ input: ConfigureSyncJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ConfigureSyncJobResponse > {
        self.client.execute(action: "ConfigureSyncJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置同步任务
    ///
    /// 配置一个同步任务
    @inlinable
    public func configureSyncJob(_ input: ConfigureSyncJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfigureSyncJobResponse {
        try await self.client.execute(action: "ConfigureSyncJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置同步任务
    ///
    /// 配置一个同步任务
    @inlinable
    public func configureSyncJob(jobId: String, srcAccessType: String, srcInfo: Endpoint, dstAccessType: String, dstInfo: Endpoint, options: Options, objects: Objects, jobName: String? = nil, runMode: String? = nil, expectRunTime: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ConfigureSyncJobResponse > {
        self.configureSyncJob(ConfigureSyncJobRequest(jobId: jobId, srcAccessType: srcAccessType, srcInfo: srcInfo, dstAccessType: dstAccessType, dstInfo: dstInfo, options: options, objects: objects, jobName: jobName, runMode: runMode, expectRunTime: expectRunTime), logger: logger, on: eventLoop)
    }

    /// 配置同步任务
    ///
    /// 配置一个同步任务
    @inlinable
    public func configureSyncJob(jobId: String, srcAccessType: String, srcInfo: Endpoint, dstAccessType: String, dstInfo: Endpoint, options: Options, objects: Objects, jobName: String? = nil, runMode: String? = nil, expectRunTime: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfigureSyncJobResponse {
        try await self.configureSyncJob(ConfigureSyncJobRequest(jobId: jobId, srcAccessType: srcAccessType, srcInfo: srcInfo, dstAccessType: dstAccessType, dstInfo: dstInfo, options: options, objects: objects, jobName: jobName, runMode: runMode, expectRunTime: expectRunTime), logger: logger, on: eventLoop)
    }
}
