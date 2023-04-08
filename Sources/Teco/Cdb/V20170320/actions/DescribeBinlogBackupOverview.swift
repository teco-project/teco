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

extension Cdb {
    /// DescribeBinlogBackupOverview请求参数结构体
    public struct DescribeBinlogBackupOverviewRequest: TCRequestModel {
        /// 需要查询的云数据库产品类型，目前仅支持 "mysql"。
        public let product: String

        public init(product: String) {
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
        }
    }

    /// DescribeBinlogBackupOverview返回参数结构体
    public struct DescribeBinlogBackupOverviewResponse: TCResponseModel {
        /// 总的日志备份容量，包含异地日志备份（单位为字节）。
        public let binlogBackupVolume: Int64

        /// 总的日志备份个数，包含异地日志备份。
        public let binlogBackupCount: Int64

        /// 异地日志备份容量（单位为字节）。
        public let remoteBinlogVolume: Int64

        /// 异地日志备份个数。
        public let remoteBinlogCount: Int64

        /// 归档日志备份容量（单位为字节）。
        public let binlogArchiveVolume: Int64

        /// 归档日志备份个数。
        public let binlogArchiveCount: Int64

        /// 标准存储日志备份容量（单位为字节）。
        public let binlogStandbyVolume: Int64

        /// 标准存储日志备份个数。
        public let binlogStandbyCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case binlogBackupVolume = "BinlogBackupVolume"
            case binlogBackupCount = "BinlogBackupCount"
            case remoteBinlogVolume = "RemoteBinlogVolume"
            case remoteBinlogCount = "RemoteBinlogCount"
            case binlogArchiveVolume = "BinlogArchiveVolume"
            case binlogArchiveCount = "BinlogArchiveCount"
            case binlogStandbyVolume = "BinlogStandbyVolume"
            case binlogStandbyCount = "BinlogStandbyCount"
            case requestId = "RequestId"
        }
    }

    /// 查询日志备份概览
    ///
    /// 本接口(DescribeBinlogBackupOverview)用于查询用户在当前地域总的日志备份概览。
    @inlinable
    public func describeBinlogBackupOverview(_ input: DescribeBinlogBackupOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBinlogBackupOverviewResponse> {
        self.client.execute(action: "DescribeBinlogBackupOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询日志备份概览
    ///
    /// 本接口(DescribeBinlogBackupOverview)用于查询用户在当前地域总的日志备份概览。
    @inlinable
    public func describeBinlogBackupOverview(_ input: DescribeBinlogBackupOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogBackupOverviewResponse {
        try await self.client.execute(action: "DescribeBinlogBackupOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询日志备份概览
    ///
    /// 本接口(DescribeBinlogBackupOverview)用于查询用户在当前地域总的日志备份概览。
    @inlinable
    public func describeBinlogBackupOverview(product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBinlogBackupOverviewResponse> {
        self.describeBinlogBackupOverview(.init(product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 查询日志备份概览
    ///
    /// 本接口(DescribeBinlogBackupOverview)用于查询用户在当前地域总的日志备份概览。
    @inlinable
    public func describeBinlogBackupOverview(product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogBackupOverviewResponse {
        try await self.describeBinlogBackupOverview(.init(product: product), region: region, logger: logger, on: eventLoop)
    }
}
