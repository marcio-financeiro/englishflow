import { BarChart, Bar, XAxis, Tooltip, ResponsiveContainer, Cell } from 'recharts';

// Isolado em módulo próprio e carregado via React.lazy (DashboardPage) para
// não incluir o recharts (pesado, usa d3 por baixo) no bundle principal do app.
export default function WeekChart({ week, minutesByDay }) {
  const chartData = week.map(({ iso, weekday }) => ({
    iso,
    day: weekday,
    minutes: minutesByDay?.[iso] ?? 0,
  }));

  return (
    <ResponsiveContainer width="100%" height={80}>
      <BarChart data={chartData}>
        <XAxis
          dataKey="day"
          axisLine={false}
          tickLine={false}
          tick={{ fontSize: 11, fill: 'var(--text-muted)' }}
        />
        <Tooltip
          cursor={{ fill: 'var(--surface-2)' }}
          formatter={(value) => [`${value} min`, 'Estudo']}
          labelFormatter={() => ''}
          contentStyle={{
            background: 'var(--surface)',
            border: '1px solid var(--border)',
            borderRadius: 12,
            fontSize: 12,
          }}
        />
        <Bar dataKey="minutes" radius={[6, 6, 6, 6]} maxBarSize={22}>
          {chartData.map((d) => (
            <Cell key={d.iso} fill={d.minutes > 0 ? 'var(--primary)' : 'var(--surface-2)'} />
          ))}
        </Bar>
      </BarChart>
    </ResponsiveContainer>
  );
}
