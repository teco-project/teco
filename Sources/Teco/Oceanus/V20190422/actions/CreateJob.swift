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

extension Oceanus {
    /// CreateJob请求参数结构体
    public struct CreateJobRequest: TCRequestModel {
        /// 作业名称，允许输入长度小于等于50个字符的中文、英文、数字、-（横线）、_（下划线）、.（点），且符号必须半角字符。注意作业名不能和现有作业同名
        public let name: String

        /// 作业的类型，1 表示 SQL 作业，2 表示 JAR 作业
        public let jobType: Int64

        /// 集群的类型，1 表示共享集群，2 表示独享集群
        public let clusterType: Int64

        /// 当 ClusterType=2 时，必选，用来指定该作业提交的独享集群 ID
        public let clusterId: String?

        /// 设置每 CU 的内存规格，单位为 GB，支持 2、4、8、16（需申请开通白名单后使用）。默认为 4，即 1 CU 对应 4 GB 的运行内存
        public let cuMem: UInt64?

        /// 作业的备注信息，可以随意设置
        public let remark: String?

        /// 作业名所属文件夹ID，根目录为"root"
        public let folderId: String?

        /// 作业运行的Flink版本
        public let flinkVersion: String?

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(name: String, jobType: Int64, clusterType: Int64, clusterId: String? = nil, cuMem: UInt64? = nil, remark: String? = nil, folderId: String? = nil, flinkVersion: String? = nil, workSpaceId: String? = nil) {
            self.name = name
            self.jobType = jobType
            self.clusterType = clusterType
            self.clusterId = clusterId
            self.cuMem = cuMem
            self.remark = remark
            self.folderId = folderId
            self.flinkVersion = flinkVersion
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case jobType = "JobType"
            case clusterType = "ClusterType"
            case clusterId = "ClusterId"
            case cuMem = "CuMem"
            case remark = "Remark"
            case folderId = "FolderId"
            case flinkVersion = "FlinkVersion"
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// CreateJob返回参数结构体
    public struct CreateJobResponse: TCResponseModel {
        /// 作业Id
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 新建作业
    ///
    /// 新建作业接口，一个 AppId 最多允许创建1000个作业
    @inlinable
    public func createJob(_ input: CreateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateJobResponse> {
        self.client.execute(action: "CreateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建作业
    ///
    /// 新建作业接口，一个 AppId 最多允许创建1000个作业
    @inlinable
    public func createJob(_ input: CreateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateJobResponse {
        try await self.client.execute(action: "CreateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建作业
    ///
    /// 新建作业接口，一个 AppId 最多允许创建1000个作业
    @inlinable
    public func createJob(name: String, jobType: Int64, clusterType: Int64, clusterId: String? = nil, cuMem: UInt64? = nil, remark: String? = nil, folderId: String? = nil, flinkVersion: String? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateJobResponse> {
        self.createJob(CreateJobRequest(name: name, jobType: jobType, clusterType: clusterType, clusterId: clusterId, cuMem: cuMem, remark: remark, folderId: folderId, flinkVersion: flinkVersion, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 新建作业
    ///
    /// 新建作业接口，一个 AppId 最多允许创建1000个作业
    @inlinable
    public func createJob(name: String, jobType: Int64, clusterType: Int64, clusterId: String? = nil, cuMem: UInt64? = nil, remark: String? = nil, folderId: String? = nil, flinkVersion: String? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateJobResponse {
        try await self.createJob(CreateJobRequest(name: name, jobType: jobType, clusterType: clusterType, clusterId: clusterId, cuMem: cuMem, remark: remark, folderId: folderId, flinkVersion: flinkVersion, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }
}
