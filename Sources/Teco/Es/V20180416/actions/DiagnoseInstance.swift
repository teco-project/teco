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

extension Es {
    /// DiagnoseInstance请求参数结构体
    public struct DiagnoseInstanceRequest: TCRequestModel {
        /// ES实例ID
        public let instanceId: String

        /// 需要触发的诊断项
        public let diagnoseJobs: [String]?

        /// 需要诊断的索引，支持通配符
        public let diagnoseIndices: String?

        public init(instanceId: String, diagnoseJobs: [String]? = nil, diagnoseIndices: String? = nil) {
            self.instanceId = instanceId
            self.diagnoseJobs = diagnoseJobs
            self.diagnoseIndices = diagnoseIndices
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case diagnoseJobs = "DiagnoseJobs"
            case diagnoseIndices = "DiagnoseIndices"
        }
    }

    /// DiagnoseInstance返回参数结构体
    public struct DiagnoseInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 智能运维诊断集群
    @inlinable
    public func diagnoseInstance(_ input: DiagnoseInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DiagnoseInstanceResponse> {
        self.client.execute(action: "DiagnoseInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智能运维诊断集群
    @inlinable
    public func diagnoseInstance(_ input: DiagnoseInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DiagnoseInstanceResponse {
        try await self.client.execute(action: "DiagnoseInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智能运维诊断集群
    @inlinable
    public func diagnoseInstance(instanceId: String, diagnoseJobs: [String]? = nil, diagnoseIndices: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DiagnoseInstanceResponse> {
        self.diagnoseInstance(DiagnoseInstanceRequest(instanceId: instanceId, diagnoseJobs: diagnoseJobs, diagnoseIndices: diagnoseIndices), region: region, logger: logger, on: eventLoop)
    }

    /// 智能运维诊断集群
    @inlinable
    public func diagnoseInstance(instanceId: String, diagnoseJobs: [String]? = nil, diagnoseIndices: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DiagnoseInstanceResponse {
        try await self.diagnoseInstance(DiagnoseInstanceRequest(instanceId: instanceId, diagnoseJobs: diagnoseJobs, diagnoseIndices: diagnoseIndices), region: region, logger: logger, on: eventLoop)
    }
}
